import 'package:flutter/material.dart';
import 'package:solidsoftware_test_task/domain/use_case.dart';

class ChangeColorScreenModel extends ChangeNotifier {
  final RandomColorUseCase _randomColorUseCase = RandomColorUseCase();
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  Color _textRandomColor = Colors.black;

  String? backgroundColorInfo;

  Color get backgroundColor => _backgroundColor;
  Color get textColor => _textColor;
  Color get textRandomColor => _textRandomColor;

  void changeColor() {
    _backgroundColor = _randomColorUseCase.generateColor();
    _textRandomColor = _randomColorUseCase.generateColor();
    _textColor = _computeContrastTextColor(_backgroundColor);

    notifyListeners();
  }

  //luminance formula 0.299*R + 0.587 * G + 0.114 * B

  Color _computeContrastTextColor(Color backgroundColor) {
    return 0.299 * backgroundColor.r +
                0.587 * backgroundColor.g +
                0.114 * backgroundColor.b >
            0.4
        ? Colors.black
        : Colors.white;
  }

  void showInfoAboutBackgroundColor() {
    backgroundColorInfo =
        '''RGB:  \nRed: ${_backgroundColor.r}, \nGreen: ${_backgroundColor.g}, \nBlue: ${_backgroundColor.b}, \nin Hex: #${_backgroundColor.value.toRadixString(16)}''';
    notifyListeners();
  }
}
