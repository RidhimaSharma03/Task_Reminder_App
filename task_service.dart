import 'dart:async';
import 'task.dart';

class TaskService 
{
  List<Task> tasks = [];

  Future<List<Task>> fetchTasks() async 
  {
    print("Loading tasks...");

    await Future.delayed(Duration(seconds: 2));

    tasks.add(Task("Study Dart", "Learn async and await", "20 June"));
    tasks.add(Task("Project Work", "Complete Task Reminder App", "25 June"));

    return tasks;
  }

  Future<void> addTask(Task task) async 
  {
    print("Saving task...");

    await Future.delayed(Duration(seconds: 2));

    tasks.add(task);

    print("Task Saved Successfully!");
  }

  void displayTasks() 
  {
    if (tasks.isEmpty) 
    {
      print("No tasks available.");
    } else 
    {
      for (var task in tasks) 
      {
        task.displayTask();
      }
    }
  }
}
