import 'package:flutter/material.dart';

class CheckBoxTogglerProvider with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  toggleIsChecked() {
    _isChecked = !_isChecked;
    notifyListeners();
  }
}
