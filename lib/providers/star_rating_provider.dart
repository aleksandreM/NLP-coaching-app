import 'package:flutter/material.dart';

class StarRatingProvider extends ChangeNotifier {
  int _rating = 0;

  int get rating => _rating;

  void setRating(int selectedRating) {
    _rating = selectedRating;
    notifyListeners();
  }
}
