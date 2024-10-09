import 'package:codeveloper_to_do/data/Tasks/Task.dart';

class TaskWithDataToDo extends Task {
  // DateTime Datetime;
  @override
  static void AddTask(String file, String title, String body, {DateTime? datetime}) {
    AddTask(file, title, body);
    Task.AddValue(file, datetime);
  }

  @override
  static void change(String file, int index, String title, String body,
      {DateTime? datetime}) {
    change(file, index, title, body);
    Task.Data[file]![index][0] = datetime;
  }

  static void FireAlarm() {}
}
