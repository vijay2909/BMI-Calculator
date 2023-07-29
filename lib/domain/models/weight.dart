import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums.dart';

part 'weight.freezed.dart';

@freezed
class Weight with _$Weight {
  const factory Weight({
    @Default(65) int value,
    @Default(WeightUnit.kg) WeightUnit unit,
  }) = _Weight;
}

extension WeightToKG on Weight {
  int convertToKG() {
    switch (unit) {
      case WeightUnit.kg:
        return value;
      case WeightUnit.pound:
        final poundValue = value / 2.20462262;
        return poundValue.round();
    }
  }
}
