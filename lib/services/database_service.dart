import 'package:path/path.dart';
import 'package:smart_todo_ai/models/enums.dart';
import 'package:smart_todo_ai/models/task_model.dart';
import 'package:smart_todo_ai/utils/exceptions.dart' as app_exceptions;
import 'package:sqflite/sqflite.dart';

/// Service for managing task database operations
class DatabaseService {
  static const String _databaseName = 'smart_todo.db';
  static const int _databaseVersion = 1;
  static const String _tableName = 'tasks';

  static Database? _database;

  /// Get the database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  /// Initialize the database
  Future<Database> _initDatabase() async {
    try {
      final String path = join(await getDatabasesPath(), _databaseName);
      return await openDatabase(
        path,
        version: _databaseVersion,
        onCreate: _onCreate,
      );
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to initialize database',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Create database tables
  Future<void> _onCreate(Database db, int version) async {
    try {
      await db.execute('''
        CREATE TABLE $_tableName(
          id TEXT PRIMARY KEY,
          title TEXT NOT NULL,
          description TEXT,
          dueDate TEXT,
          reminderTime TEXT,
          isCompleted INTEGER NOT NULL DEFAULT 0,
          priority INTEGER NOT NULL DEFAULT 1,
          category INTEGER NOT NULL DEFAULT 5,
          createdAt TEXT NOT NULL,
          updatedAt TEXT
        )
      ''');

      // Create indexes for better performance
      await db.execute('CREATE INDEX idx_due_date ON $_tableName(dueDate)');
      await db.execute(
        'CREATE INDEX idx_is_completed ON $_tableName(isCompleted)',
      );
      await db.execute('CREATE INDEX idx_category ON $_tableName(category)');
      await db.execute('CREATE INDEX idx_priority ON $_tableName(priority)');
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to create database tables',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  // CRUD Operations

  /// Insert a new task into the database
  Future<void> insertTask(Task task) async {
    try {
      final Database db = await database;
      await db.insert(
        _tableName,
        task.toDatabase(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to insert task',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Insert multiple tasks in a batch
  Future<void> insertTasks(List<Task> tasks) async {
    try {
      final Database db = await database;
      final Batch batch = db.batch();

      for (final task in tasks) {
        batch.insert(
          _tableName,
          task.toDatabase(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }

      await batch.commit(noResult: true);
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to insert tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get all tasks from the database
  Future<List<Task>> getAllTasks() async {
    try {
      final Database db = await database;
      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        orderBy: 'createdAt DESC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get all tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get tasks by category
  Future<List<Task>> getTasksByCategory(TaskCategory category) async {
    try {
      final Database db = await database;
      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'category = ?',
        whereArgs: [category.index],
        orderBy: 'createdAt DESC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get tasks by category',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get tasks by priority
  Future<List<Task>> getTasksByPriority(TaskPriority priority) async {
    try {
      final Database db = await database;
      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'priority = ?',
        whereArgs: [priority.index],
        orderBy: 'createdAt DESC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get tasks by priority',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get today's tasks
  Future<List<Task>> getTodayTasks() async {
    try {
      final Database db = await database;
      final DateTime now = DateTime.now();
      final DateTime todayStart = DateTime(now.year, now.month, now.day);
      final DateTime todayEnd = DateTime(now.year, now.month, now.day + 1);

      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'dueDate BETWEEN ? AND ?',
        whereArgs: [todayStart.toIso8601String(), todayEnd.toIso8601String()],
        orderBy: 'dueDate ASC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get today\'s tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get overdue tasks
  Future<List<Task>> getOverdueTasks() async {
    try {
      final Database db = await database;
      final DateTime now = DateTime.now();
      final DateTime today = DateTime(now.year, now.month, now.day);

      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'dueDate < ? AND isCompleted = ?',
        whereArgs: [today.toIso8601String(), 0],
        orderBy: 'dueDate ASC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get overdue tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get completed tasks
  Future<List<Task>> getCompletedTasks() async {
    try {
      final Database db = await database;
      final List<Map<String, dynamic>> maps = await db.query(
        _tableName,
        where: 'isCompleted = ?',
        whereArgs: [1],
        orderBy: 'updatedAt DESC',
      );
      return maps.map((map) => Task.fromDatabase(map)).toList();
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get completed tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Update a task
  Future<void> updateTask(Task task) async {
    try {
      final Database db = await database;
      final Task updatedTask = task.withUpdate();
      await db.update(
        _tableName,
        updatedTask.toDatabase(),
        where: 'id = ?',
        whereArgs: [task.id],
      );
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to update task',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Delete a task by ID
  Future<void> deleteTask(String id) async {
    try {
      final Database db = await database;
      await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to delete task',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Toggle task completion status
  Future<void> toggleTaskCompletion(String id, bool isCompleted) async {
    try {
      final Database db = await database;
      await db.update(
        _tableName,
        {
          'isCompleted': isCompleted ? 1 : 0,
          'updatedAt': DateTime.now().toIso8601String(),
        },
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to toggle task completion',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Delete all completed tasks
  Future<void> deleteCompletedTasks() async {
    try {
      final Database db = await database;
      await db.delete(_tableName, where: 'isCompleted = ?', whereArgs: [1]);
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to delete completed tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Delete all tasks
  Future<void> clearAllTasks() async {
    try {
      final Database db = await database;
      await db.delete(_tableName);
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to clear all tasks',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Get task count
  Future<int> getTaskCount() async {
    try {
      final Database db = await database;
      final List<Map<String, dynamic>> result = await db.rawQuery(
        'SELECT COUNT(*) FROM $_tableName',
      );
      return Sqflite.firstIntValue(result) ?? 0;
    } catch (e, stackTrace) {
      throw app_exceptions.DbException(
        'Failed to get task count',
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Close the database
  Future<void> close() async {
    final Database? db = _database;
    if (db != null) {
      await db.close();
      _database = null;
    }
  }
}
