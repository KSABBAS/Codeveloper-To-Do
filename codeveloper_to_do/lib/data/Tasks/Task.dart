class Task {
  static Map<String, List<List>> Data = {
    "prayer": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "prayer", //title,
        "you have to pray fajr", //body
        "false", //task is done(true) if is not done (false)
      ],
    ],
    "gym": [
      //every file (key) container some tasks of the same category
      [
        "no date", //the type of the task
        "training", //title,
        "you have to train", //body
        "false", //task is done(true) if is not done (false)
      ],
    ],
  }; //a simulation for local datebase tasks
  static void AddTask(String file, String title, String body) {
    Data[file]!.add([title, body, "false"]);
  }

  static List GetTaskData(String file, int index) {
    return Data[file]![index];
  }

  static void RemoveTask(String file, int index) {
    Data[file]!.remove(index);
  }

  static void change(String file, int index, String title, String body) {
    Data[file]![index][1] = title;
    Data[file]![index][2] = body;
  }

  static void DoneTask(String file, int index) {
    Data[file]![index][3] = "true";
  }

  static void UnDoneTask(String file, int index) {
    Data[file]![index][3] = "false";
  }

  static void AddValue(String file, value) {
    Data[file]![Data[file]!.length - 1].add(value);
  }
}
