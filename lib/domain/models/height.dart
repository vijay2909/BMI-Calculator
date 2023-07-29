import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'height.freezed.dart';

@freezed
sealed class Height with _$Height {
  const factory Height.cm({@Default(167) int value}) = HeightInCM;

  const factory Height.fi({
    @Default(5) int foot,
    @Default(6) int inch,
  }) = HeightInFootInch;
}

extension FootInchToCMConverter on HeightInFootInch {
  int convertToCM() {
    int footInches = foot * 12;
    int totalInches = inch + footInches;
    // convert inches to centimeters
    return (totalInches * 2.54).round();
  }
}

extension CMToFootInchConverter on HeightInCM {
  (int, int) convertToFootInch() {
    final feetAndInch = value / 30.48;
    final feet = feetAndInch.toInt();
    final remainingFeet = feetAndInch % 1;
    final inches = (remainingFeet * 12).round();
    return (feet, inches);
  }
}

extension HeightToMeter on Height {
  double convertToMeter() {
    switch (this) {
      case HeightInCM height:
        return height.value / 100;
      case HeightInFootInch height:
        int footInches = height.foot * 12;
        int totalInches = height.inch + footInches;
        // convert inches to centimeters
        return (totalInches * 0.0254);
    }
  }
}
