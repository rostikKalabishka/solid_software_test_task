import 'package:flutter/material.dart';
import 'package:solidsoftware_test_task/domain/random_color_use_case.dart';

/// Model for managing and notifying about changes to the UI colors
class ChangeColorScreenModel extends ChangeNotifier {
  final RandomColorUseCase _randomColorUseCase = RandomColorUseCase();
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  Color _textRandomColor = Colors.black;

  /// Info about background color in RGB and HEX

  String? backgroundColorInfo;

  /// Current background color
  Color get backgroundColor => _backgroundColor;

  /// Current text  color
  Color get textColor => _textColor;

  /// Random generate text color
  Color get textRandomColor => _textRandomColor;

  /// Changes the background and random text colors

  void changeColor() {
    _backgroundColor = _randomColorUseCase.generateColor();
    _textRandomColor = _randomColorUseCase.generateColor();
    _textColor = _computeContrastTextColor(_backgroundColor);

    notifyListeners();
  }

  //luminance formula 0.299 * R + 0.587 * G + 0.114 * B

  Color _computeContrastTextColor(Color backgroundColor) {
    const double redCoefficient = 0.299;
    const double greenCoefficient = 0.587;
    const double blueCoefficient = 0.114;
    const double luminanceThreshold = 0.4;

    return redCoefficient * backgroundColor.r +
                greenCoefficient * backgroundColor.g +
                blueCoefficient * backgroundColor.b >
            luminanceThreshold
        ? Colors.black
        : Colors.white;
  }

  /// Set the backgroundColorInfo string description
  void showInfoAboutBackgroundColor() {
    const int hexRadix = 16;
    backgroundColorInfo =
        '''RGB:  \nRed: ${_backgroundColor.r}, \nGreen: ${_backgroundColor.g}, \nBlue: ${_backgroundColor.b}, \nHex: #${_backgroundColor.value.toRadixString(hexRadix)}''';
    notifyListeners();
  }
}
