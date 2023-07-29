import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/home/bloc/home_state.dart';
import 'height.dart';
import 'weight.dart';

part 'bmi_category.freezed.dart';

@freezed
sealed class BMICategory with _$BMICategory {
  const factory BMICategory.underWeight({
    required double bmi,
    @Default("UnderWeight") String status,
    @Default("You are underweight. You may want to gain some weight.")
    String description,
    @Default("Below 18.5 kg/m2") String bmiRange,
  }) = _UnderWeight;
  const factory BMICategory.normalWeight({
    required double bmi,
    @Default("NormalWeight") String status,
    @Default("You have a normal body weight. Good Job!") String description,
    @Default("18.5 - 24.9 kg/m2") String bmiRange,
  }) = _NormalWeight;
  const factory BMICategory.overWeight({
    required double bmi,
    @Default("OverWeight") String status,
    @Default("You are overweight. You may want to lose some weight.")
    String description,
    @Default("25 - 29.9 kg/m2") String bmiRange,
  }) = _OverWeight;
  const factory BMICategory.obesity({
    required double bmi,
    @Default("Obesity") String status,
    @Default(
        "You are obese. It's important to take steps to improve your health.")
    String description,
    @Default("Above 30 kg/m2") String bmiRange,
  }) = _Obesity;
}

extension BMICategoryTeller on HomeState {
  BMICategory getBMICategory() {
    double heightInMeters = height.convertToMeter();
    debugPrint("heightInMeters: $heightInMeters");
    int weightInKg = weight.convertToKG();
    debugPrint("weightInKg: $weightInKg");
    final bmi = weightInKg / (heightInMeters * heightInMeters);
    if (bmi < 18.5) {
      return BMICategory.underWeight(bmi: bmi);
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return BMICategory.normalWeight(bmi: bmi);
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return BMICategory.overWeight(bmi: bmi);
    } else {
      return BMICategory.obesity(bmi: bmi);
    }
  }
}
