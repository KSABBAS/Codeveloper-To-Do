import 'package:codeveloper_to_do/data/Tasks/Task.dart';

class TaskWithDataToDo extends Task {
  // DateTime Datetime;
  @override
  void AddTask(String file, String title, String body, {DateTime? datetime}) {
    super.AddTask(file, title, body);
    super.AddValue(file, datetime);
  }

  @override
  void change(String file, int index, String title, String body,
      {DateTime? datetime}) {
    super.change(file, index, title, body);
    Task.Data[file]![index][4] = datetime;
  }

  void FireAlarm() {}
}
