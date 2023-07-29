import '../../../core/enums.dart';

sealed class HomeEvent {}

class HomeSelectGender extends HomeEvent {
  final Gender gender;

  HomeSelectGender(this.gender);
}

class HomeSelectHeight extends HomeEvent {
  final double height;

  HomeSelectHeight(this.height);
}

class HomeIncreaseWeight extends HomeEvent {}

class HomeDecreaseWeight extends HomeEvent {}

class HomeChangeWeight extends HomeEvent {
  final int weight;

  HomeChangeWeight(this.weight);
}

class HomeChangeWeightUnit extends HomeEvent {
  final WeightUnit unit;

  HomeChangeWeightUnit(this.unit);
}

class HomeChangeHeightUnit extends HomeEvent {
  final HeightUnit unit;

  HomeChangeHeightUnit(this.unit);
}

class HomeIncreaseAge extends HomeEvent {}

class HomeDecreaseAge extends HomeEvent {}
