import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {

  static late final  SharedPreferences prefs;
   
   static init() async{
     prefs = await SharedPreferences.getInstance();
   }
    /// function to save the change in memory
  static Future <bool> saveEligipility () async{
      final result = await prefs.setBool('onboarding', true);
      return result;
   }
  /// check if this function happend or not
  static bool? getEligipility()
   {
    return  prefs.getBool('onboarding');
   }
}