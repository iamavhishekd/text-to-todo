import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_todo_ai/bloc/task/task_bloc.dart';

class AIInputDialog extends StatefulWidget {
  const AIInputDialog({super.key});

  @override
  State<AIInputDialog> createState() => _AIInputDialogState();
}

class _AIInputDialogState extends State<AIInputDialog> {
  final _controller = TextEditingController();
  bool _isLoading = false;
  String _error = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) {
        if (state is TaskAIParsingSuccess) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Successfully added ${state.tasks.length} task(s)'),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state is TaskAIParsingError) {
          setState(() {
            _error = state.error;
            _isLoading = false;
          });
        }
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          'Add with AI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Describe your tasks naturally',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText:
                      'e.g., Call electrician tomorrow at 10 AM, buy milk and eggs before Friday',
                  filled: true,
                  fillColor: Colors.grey.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(16),
                ),
                maxLines: 4,
                minLines: 2,
                style: const TextStyle(fontSize: 16),
                textCapitalization: TextCapitalization.sentences,
              ),
              const SizedBox(height: 16),
              if (_error.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.red.shade100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red.shade400,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _error,
                          style: TextStyle(
                            color: Colors.red.shade700,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (_isLoading)
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Column(
                    children: [
                      const CircularProgressIndicator(),
                      const SizedBox(height: 16),
                      Text(
                        'Parsing your request...',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: _isLoading ? null : () => Navigator.pop(context),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: const Text('Cancel'),
          ),
          FilledButton.icon(
            onPressed: _isLoading ? null : _parseTasks,
            icon: const Icon(Icons.auto_awesome, size: 18),
            label: const Text('Generate Tasks'),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _parseTasks() {
    if (_controller.text.trim().isEmpty) {
      setState(() {
        _error = 'Please enter some text';
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _error = '';
    });

    context.read<TaskBloc>().add(ParseTasksFromAI(_controller.text.trim()));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
