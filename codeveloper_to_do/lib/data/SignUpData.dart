import 'package:codeveloper_to_do/data/loginData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpData {
  static String? name = null;
  static String? Email = null;
  static String? phone = null;
  static String? password = null;
  static Future<bool> storeSignUpInfo() async {
    if (await _CheckUserExistance()) {
      print("user already exists");
      return false;
    } else {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences
          .setStringList("UserData", [name!, Email!, phone!, password!]);
      sharedPreferences.setBool("LoggedIn", true);
      print(sharedPreferences.getStringList("UserData"));
      print("==================signed up successfully");
      return true;
    }
  }

  static Future<List<String>?> GetUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (await LogInData.LoggedInCheck()) {
      return sharedPreferences.getStringList("UserData")!.toList();
    } else {
      return null;
    }
  }

  static Future<bool> _CheckUserExistance() async {
    // here we will use this method to check if the account is linked to another asccount
    return false;
  }
}
