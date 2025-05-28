import 'package:flutter/material.dart';
import 'package:solidsoftware_test_task/domain/use_case.dart';

class ChangeColorScreenModel extends ChangeNotifier {
  final RandomColorUseCase _randomColorUseCase = RandomColorUseCase();
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  Color get backgroundColor => _backgroundColor;
  Color get textColor => _textColor;

  void changeColor() {
    _backgroundColor = _randomColorUseCase.generateColor();
    _textColor = _randomColorUseCase.generateColor();
    notifyListeners();
  }
}
