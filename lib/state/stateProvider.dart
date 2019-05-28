import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class NoteState extends ChangeNotifier {
  String _note;

  String get note => _note;

  set note (String noteEdit){
    _note = noteEdit;
    notifyListeners();
  }
}