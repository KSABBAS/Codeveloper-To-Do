class Task {
  static Map<String, List<List>> LocalData = {
    "prayer": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        5, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        false, //is it today,
        3, //importance of the task
      ],
    ],
    "other": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
    "Sports": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
    "Sports now yala": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
    "Sports2": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
    "Sports3": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
    "Sports4": [
      //every file (key) container some tasks of the same category
      [
        null, //Task Date
        "dohr", //title,
        "you have to pray dohr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        4, //importance of the task
      ],
      [
        "6:14", //Task Date
        "asr", //title,
        "you have to pray asr", //body,
        false, //task is done(true) if is not done (false),
        true, //is it today,
        1, //importance of the task
      ],
    ],
  }; //a simulation for local datebase tasks,
  static Map<String, List<Map<String, List>>> TeamsData = {
    "Project 1": [
      {
        "kareemsaid234@gmail.com": [
          "Ui manager", //Member role in the progect,
          [
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              false, //is it today
              2, //importance of the task
            ], //Task1
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 2
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 3
          ], //Member Tasks
        ],
        "hosny@gmail.com": [
          "Database manager", //Member role in the progect,
          [
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task1
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 2
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 3
          ], //Member Tasks
        ],
      }
    ],
    "Project 2": [
      {
        "kareemsaid234@gmail.com": [
          "Ui manager", //Member role in the progect,
          [
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task1
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 2
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 3
          ], //Member Tasks
        ],
        "hosny@gmail.com": [
          "Database manager", //Member role in the progect,
          [
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task1
            [
              "no hhhhhhhhhhhhhhdate", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 2
            [
              "no date", //the type of the task
              "training", //title,
              "you have to train", //body
              false, //task is done(true) if is not done (false)
              true, //is it today
              2, //importance of the task
            ], //Task 3
          ], //Member Tasks
        ],
      }
    ]
  }; //a simulation for local datebase tasks,
  static void AddLocalTask(String file, String title, String body, bool state) {
    LocalData[file]!.add([null, title, body, state]);
  }

  static void AddLocalTaskOnTop(
      String file, String title, String body, bool state) {
    LocalData[file]!.insert(0, [null, title, body, state]);
  }

  static List GetLocalTaskData(String file, int index) {
    return LocalData[file]![index];
  }

  static void RemoveLocalTask(String file, int index) {
    LocalData[file]!.removeAt(index);
  }

  static void changeLocalTaskTitle(String file, int index, String title) {
    LocalData[file]![index][1] = title;
  }

  static void changeLocalTaskBody(String file, int index, String Body) {
    LocalData[file]![index][2] = Body;
  }

  static void DoneLocalTask(String file, int index) {
    LocalData[file]!.elementAt(index)[3] = true;
  }

  static void UnDoneLocalTask(String file, int index) {
    LocalData[file]!.elementAt(index)[3] = false;
  }

  // static void AddLocalValue(String file, value) {
  //   LocalData[file]![LocalData[file]!.length - 1].add(value);
  // }
  //============================================================================
  //============================================================================
  //============================================================================
  static void AddTeamTask(
      String Progect, String Member, String title, String body) {
    TeamsData[Progect]![0][Member]![1].add([null, title, body, false]);
  }

  static List GetTeamTaskData(String Progect, String Member, int index) {
    return TeamsData[Progect]![0][Member]![1][index];
  }

  static void RemoveTeamTask(String Progect, String Member, int index) {
    TeamsData[Progect]![0][Member]![1].removeAt(index);
  }

  static void changeTeamTaskTitle(
      String Progect, String Member, int index, String title) {
    TeamsData[Progect]![0][Member]![1][index][1] = title;
  }

  static void changeTeamTaskBody(
      String Progect, String Member, int index, String body) {
    TeamsData[Progect]![0][Member]![1][index][2] = body;
  }

  static void DoneTeamTask(String Progect, String Member, int index) {
    TeamsData[Progect]![0][Member]![1].elementAt(index)[3] = true;
  }

  static void UnDoneTeamTask(String Progect, String Member, int index) {
    TeamsData[Progect]![0][Member]![1].elementAt(index)[3] = false;
  }

  // static void AddTeamValue(String Progect,String Member, int index, value) {
  //   TeamsData[Progect]![0][Member]![1][index][TeamsData[Progect]![0][Member]![1][index].length - 1].add(value);
  // }
  List<List> TodayList = [
    [
      "prayer", //file,
      0 //index
    ],
    [
      "prayer", //file,
      1 //index
    ],
    [
      "other", //file,
      0 //index
    ],
    [
      "other", //file,
      1 //index
    ],
    [
      "Project 1", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      0 //the task index
    ],
    [
      "Project 1", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      1 //the task index
    ],
    [
      "Project 1", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      2 //the task index
    ],
    [
      "Project 2", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      0 //the task index
    ],
    [
      "Project 2", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      1 //the task index
    ],
    [
      "Project 2", //project,
      "kareemsaid234@gmail.com", //we won't put in here any tasks but the users tasks,
      "Ui manager", //the position of the user in the project,
      2 //the task index
    ],
  ];
  static List<List> MakeTodaysList(String Email) {
    List<List> list = [];
    for (var index0 = 0; index0 < LocalData.length; index0++) {
      for (var i = 0;
          i < LocalData[LocalData.keys.elementAt(index0)]!.length;
          i++) {
        if (LocalData[LocalData.keys.elementAt(index0)]![i][4])
          list.add([LocalData.keys.elementAt(index0), i]);
      }
    }
    for (var index0 = 0; index0 < TeamsData.length; index0++) {
      String projectName = TeamsData.keys.elementAt(index0);
      for (var memberData in TeamsData[projectName]!) {
        if (memberData.containsKey(Email)) {
          String role = memberData[Email]![0]; // Member's role
          List tasks = memberData[Email]![1]; // Member's tasks list
          for (var t = 0; t < tasks.length; t++) {
            if (tasks[t][4]) {
              list.add([projectName, Email, t]);
            }
          }
        }
      }
    }
    return list;
  }

  static int TasksDoneToday(List<List> TodayList) {
    int number = 0;
    for (var element in TodayList) {
      if (element.length == 2 && GetLocalTaskData(element[0], element[1])[3]) {
        number++;
      } else if (element.length == 3 &&
          GetTeamTaskData(element[0], element[1], element[2])[3]) {
        number++;
      }
    }
    return number;
  }

  static int LocalTasksDoneNumber(String file) {
    int Count = 0;
    for (int i = 0; i < LocalData[file]!.length; i++) {
      if (LocalData[file]![i][3]) {
        Count++;
      }
    }
    return Count;
  }

  _moveToLast_Lacal_(String file, int Index) {}
}
