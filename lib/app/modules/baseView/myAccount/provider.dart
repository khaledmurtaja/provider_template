import 'package:flutter/material.dart';
import '../../../data/local/my_shared_pref.dart';

class MyAccountScreenProvider extends ChangeNotifier {
  bool isArabicLanguageChosen = true;
  int currentIndex = 0; //tab index
  onArabicButtonClicked() {
    if (!isArabicLanguageChosen) {
      isArabicLanguageChosen = true;
      MySharedPref.setCurrentLanguage("ar");
      currentIndex = 3;
      notifyListeners();
    }
  }

  onDeutschButtonClicked() {
    if (isArabicLanguageChosen) {
      isArabicLanguageChosen = false;
      MySharedPref.setCurrentLanguage("en");
      currentIndex = 3;
      notifyListeners();
    }
  }
}
