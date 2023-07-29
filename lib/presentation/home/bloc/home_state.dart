import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../domain/models/height.dart';
import '../../../domain/models/weight.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(Gender.male) Gender gender,
    @Default(Weight()) Weight weight,
    @Default(Height.fi()) Height height,
    @Default(25) int age,
  }) = _HomeState;

  String get currentHeight {
    switch (height) {
      case HeightInCM height:
        return height.value.toString();

      case HeightInFootInch height:
        return "${height.foot}'${height.inch}\"";
    }
  }

  HeightUnit get heightUnit {
    switch (height) {
      case HeightInCM _:
        return HeightUnit.metric;

      case HeightInFootInch _:
        return HeightUnit.standard;
    }
  }

  int get heightSliderValue {
    switch (height) {
      case HeightInCM height:
        return height.value;

      case HeightInFootInch height:
        return height.convertToCM();
    }
  }
}

/* extension BMICalculatorExt on HomeState {
  BMIResultState calculateBMI() {
    double heightInMeters = height.convertToMeter();

    int weightInKg = weight.convertToKG();

    final bmi = weightInKg / (heightInMeters * heightInMeters);
    return BMIResultState(
      bmi: bmi,
      status: 'Normal',
      description: 'You have a normal body weight, Good Job!',
    );
  }
} */
