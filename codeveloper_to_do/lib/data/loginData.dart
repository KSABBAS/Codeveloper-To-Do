import 'package:shared_preferences/shared_preferences.dart';

class LogInData {
  static String? Email = null;
  static String? password = null;
  static Future<bool> storeLogInInfo() async {
    if (!await _CheckUserExistance()) {
      print("user already exists");
      return false;
    } else {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setStringList("UserData", await _GetDataFromServer());
      await sharedPreferences.setBool("LoggedIn", true);
      print("=================Logged in successfully");
      return true;
    }
  }

  static Future<List<String>> _GetDataFromServer() async {
    List<String> DataList =
        []; //here will be the functions that bring the data from the server as a list of strings
    //
    return DataList;
  }

  static bool _CheckUserExistance() {
    // here we will use this method to check if the account is linked to another asccount
    return false;
  }

  static Future<bool> LoggedInCheck() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getBool("LoggedIn") ?? false) {
      print(
          "==============================${sharedPreferences.getStringList("UserData")}");
      return true;
    } else {
      return false;
    }
  }
}
