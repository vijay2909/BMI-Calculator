import 'dart:math';

import 'enums.dart';

extension Precision on double {
  double toPrecision(int fractionDigits) {
    final num mod = pow(10, fractionDigits.toDouble());
    return (this * mod).round().toDouble() / mod;
  }
}

extension GenderNameCapitalizer on Gender {
  String title() {
    switch (this) {
      case Gender.male:
        return "Male";
      case Gender.female:
        return "Female";
    }
  }
}

extension WeightTitle on WeightUnit {
  String title() {
    switch (this) {
      case WeightUnit.kg:
        return "kg";
      case WeightUnit.pound:
        return "lbs";
    }
  }
}

extension Capitalizer on String {
  String capitalize() {
    if (length > 1) {
      return this[0].toUpperCase() + substring(1).toLowerCase();
    }
    return this;
  }
}
