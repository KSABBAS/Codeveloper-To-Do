import 'package:codeveloper_to_do/data/loginData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpData {
  static String? name = null;
  static String? Email = null;
  static String? phone = null;
  static String? password = null;
  static String? image = null;
  static Future<bool> storeSignUpInfo() async {
    if (await _CheckUserExistance()) {
      print("user already exists");
      return false;
    } else {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences
          .setStringList("UserData", [name!, Email!, phone!, password!,image??"https://media.istockphoto.com/id/1332100919/vector/man-icon-black-icon-person-symbol.jpg?s=612x612&w=0&k=20&c=AVVJkvxQQCuBhawHrUhDRTCeNQ3Jgt0K1tXjJsFy1eg="]);
      sharedPreferences.setBool("LoggedIn", true);
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
