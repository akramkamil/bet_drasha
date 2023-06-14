import 'package:flutter/material.dart';

class ProgresProvider extends ChangeNotifier{
  int _progress =0; 

  set progress(int progres) {
    _progress =progres;
    notifyListeners();
  }

  int get progress => _progress;
}