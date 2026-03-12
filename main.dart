import 'task.dart';
import 'task_service.dart';

Future<void> main() async 
{

  TaskService taskService = TaskService();

  List<Task> tasks = await taskService.fetchTasks();

  print("\nTasks Loaded Successfully\n");

  taskService.displayTasks();

  Task newTask = Task(
      "Submit Assignment",
      "Submit Dart mini project",
      "30 June"
  );

  await taskService.addTask(newTask);

  print("\nUpdated Task List\n");

  taskService.displayTasks();
}
