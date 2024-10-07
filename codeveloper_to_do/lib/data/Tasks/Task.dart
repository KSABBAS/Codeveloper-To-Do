class Task {
  static Map<String, List<List>> Data = {
    "daily": [
      //every file (key) container some tasks of the same category
      [
        "no date", //the type of the task
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
      ],
      [
        "no date", //the type of the task
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
      ],
      [
        "no date", //the type of the task
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
        DateTime.now()
      ],
    ],
    "other": [
      //every file (key) container some tasks of the same category
      [
        "no date", //the type of the task
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
      ],
      [
        "no date", //the type of the task
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
      ],
    ],
  }; //a simulation for local datebase tasks
  void AddTask(String file, String title, String body) {
    Data[file]!.add([title, body, "false"]);
  }

  List GetTaskData(String file, int index) {
    return Data[file]![index];
  }

  void RemoveTask(String file, int index) {
    Data[file]!.remove(index);
  }

  void change(String file, int index, String title, String body) {
    Data[file]![index][1] = title;
    Data[file]![index][2] = body;
  }

  void DoneTask(String file, int index) {
    Data[file]![index][3] = "true";
  }

  void UnDoneTask(String file, int index) {
    Data[file]![index][3] = "false";
  }

  void AddValue(String file, value) {
    Data[file]![Data[file]!.length - 1].add(value);
  }
}
