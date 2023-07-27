import 'package:flutter/cupertino.dart';

class UtilLogic with ChangeNotifier {
  var isPasswordObsecure = true;
  void changePasswordVisibilty() {
    isPasswordObsecure = !isPasswordObsecure;
    notifyListeners();
  }
}
