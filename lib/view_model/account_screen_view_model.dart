import 'package:flutter/cupertino.dart';

class AccountScreenViewModel with ChangeNotifier {
  bool isLoading = false;
  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
