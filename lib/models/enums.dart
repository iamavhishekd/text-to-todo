import 'package:flutter/material.dart';

/// Task priority levels
enum TaskPriority {
  low('low', 'Low'),
  medium('medium', 'Medium'),
  high('high', 'High');

  const TaskPriority(this.value, this.displayName);

  final String value;
  final String displayName;

  /// Parse priority from string value
  static TaskPriority fromString(String value) {
    return TaskPriority.values.firstWhere(
      (priority) => priority.value == value.toLowerCase(),
      orElse: () => TaskPriority.medium,
    );
  }

  /// Get color for priority level
  Color get color {
    switch (this) {
      case TaskPriority.low:
        return Colors.green;
      case TaskPriority.medium:
        return Colors.orange;
      case TaskPriority.high:
        return Colors.red;
    }
  }

  /// Get icon for priority level
  IconData get icon {
    switch (this) {
      case TaskPriority.low:
        return Icons.arrow_downward;
      case TaskPriority.medium:
        return Icons.remove;
      case TaskPriority.high:
        return Icons.arrow_upward;
    }
  }
}

/// Task category types
enum TaskCategory {
  personal('personal', 'Personal', Icons.person),
  work('work', 'Work', Icons.work),
  shopping('shopping', 'Shopping', Icons.shopping_cart),
  health('health', 'Health', Icons.favorite),
  home('home', 'Home', Icons.home),
  other('other', 'Other', Icons.category);

  const TaskCategory(this.value, this.displayName, this.icon);

  final String value;
  final String displayName;
  final IconData icon;

  /// Parse category from string value
  static TaskCategory fromString(String value) {
    return TaskCategory.values.firstWhere(
      (category) => category.value == value.toLowerCase(),
      orElse: () => TaskCategory.other,
    );
  }

  /// Get color for category
  Color get color {
    switch (this) {
      case TaskCategory.personal:
        return Colors.blue;
      case TaskCategory.work:
        return Colors.purple;
      case TaskCategory.shopping:
        return Colors.teal;
      case TaskCategory.health:
        return Colors.pink;
      case TaskCategory.home:
        return Colors.brown;
      case TaskCategory.other:
        return Colors.grey;
    }
  }
}

// Legacy extensions for backward compatibility
extension TaskPriorityX on TaskPriority {
  String get name => value;
}

extension TaskCategoryX on TaskCategory {
  String get name => value;
}
