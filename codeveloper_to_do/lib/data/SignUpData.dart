import 'package:shared_preferences/shared_preferences.dart';

class SignUpData {
  static String? name = null;
  static String? Email = null;
  static String? phone = null;
  static String? password = null;
  static String? ConfirmPassword = null;
  Future<bool> storeSignUpInfo() async {
    if (_CheckUserExistance()) {
      print("user already exists");
      return false;
    } else {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setStringList(
          "UserData", [name!, Email!, phone!, password!, ConfirmPassword!]);
      sharedPreferences.setBool("LoggedIn",true);
      print(sharedPreferences.getStringList("UserData"));
      return true;
    }
  }

  bool _CheckUserExistance() {
    // here we will use this method to check if the account is linked to another asccount
    return false;
  }
}
