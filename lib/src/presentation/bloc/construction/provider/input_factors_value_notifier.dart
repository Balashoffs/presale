import 'package:flutter/foundation.dart';

class InputFactorsValueNotifier extends ChangeNotifier {
  double _totalSquare = 0.0;
  double _heightFactor = 0.0;
  double _squareFactor = 0.0;
  double _regionFactor = 0.0;
  double _hardFactor = 0.0;
  double _costPerMeter = 0.0;
  double _total = 0.0;

  bool isNotZero(double input) => input.compareTo(0.0) != 0;
  bool isZero(double input) => input.compareTo(0.0) == 0;

  String equation() {
    String a = isNotZero(_totalSquare) ? _totalSquare.toStringAsFixed(1) : 'A';
    String b = isNotZero(_heightFactor) ? _heightFactor.toStringAsFixed(1) : 'B';
    String c = isNotZero(_squareFactor) ? _squareFactor.toStringAsFixed(1) : 'C';
    String d = isNotZero(_regionFactor) ? _regionFactor.toStringAsFixed(1) : 'D';
    String e = isNotZero(_hardFactor) ? _hardFactor.toStringAsFixed(2) : 'E';
    String f = isNotZero(_costPerMeter) ? '$_costPerMeter' : 'F';

    if (isNotZero(_costPerMeter)) {
      _total = _totalSquare *
          _heightFactor *
          _squareFactor *
          _regionFactor *
          _hardFactor *
          _costPerMeter;
    }

    String sum = calcSum(_total);

    return "$sum = $a * $b * $c * $d * $e * $f";
  }

  String calcSum(double? total) {
    if (!isZero(_total)) {
      if (_total.compareTo(100000) <= 0) {
        return '${(_total / 100000).toStringAsFixed(2)} тыс';
      }
      if (_total.compareTo(1000000000) <= 0) {
        return '${(_total / 1000000).toStringAsFixed(2)} млн';
      }
      return '${(_total / 1000000000).toStringAsFixed(2)} млрд';
    }

    return '\u03A3';
  }

  void updateTotalSquare([double value = 0.0]) {
    int res = value.compareTo(0.0);
    if (res > 0) {
      if ( isZero(_totalSquare)) {
        _heightFactor = 1.0;
        _squareFactor = 1.0;
        _regionFactor = 1.0;
        _hardFactor = 1.0;
      }
      _totalSquare = value;
    } else {
      _totalSquare = 0.0;
      _heightFactor = 0.0;
      _squareFactor = 0.0;
      _regionFactor = 0.0;
      _hardFactor = 0.0;
      _costPerMeter = 0.0;
      _total = 0.0;
    }
    notifyListeners();
  }

  void updateHeight(double value) {
    _heightFactor = value;
    notifyListeners();
  }

  void updateRegion(double value) {
    _regionFactor = value;
    notifyListeners();
  }

  void updateSquare(double value) {
    _squareFactor = value;
    notifyListeners();
  }

  void updateHardFactor(double value) {
    _hardFactor = value;
    notifyListeners();
  }

  void updateCostPerMeter(double value) {
    _costPerMeter = value;
    notifyListeners();
  }
}
