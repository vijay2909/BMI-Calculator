import '../../../domain/models/height.dart';
import '../../../domain/models/weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/enums.dart';
import 'home_constants.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) {
      switch (event) {
        case HomeSelectGender():
          emit(state.copyWith(gender: event.gender));
          break;
        case HomeSelectHeight():
          switch (state.height) {
            case HeightInCM _:
              emit(
                state.copyWith(
                  height: Height.cm(value: event.height.toInt()),
                ),
              );
              break;
            case HeightInFootInch _:
              final (foot, inch) =
                  (Height.cm(value: event.height.toInt()) as HeightInCM)
                      .convertToFootInch();
              emit(
                state.copyWith(
                  height: Height.fi(foot: foot, inch: inch),
                ),
              );
              break;
          }
          break;
        case HomeIncreaseWeight():
          switch (state.weight.unit) {
            case WeightUnit.kg:
              if (state.weight.value < maxWeightKG) {
                emit(
                  state.copyWith(
                    weight: state.weight.copyWith(
                      value: state.weight.value + 1,
                    ),
                  ),
                );
              }
              break;
            case WeightUnit.pound:
              if (state.weight.value < maxWeightPounds) {
                emit(
                  state.copyWith(
                    weight: state.weight.copyWith(
                      value: state.weight.value + 1,
                    ),
                  ),
                );
              }
              break;
          }

          break;
        case HomeDecreaseWeight():
          switch (state.weight.unit) {
            case WeightUnit.kg:
              if (state.weight.value > minWeightKG) {
                emit(
                  state.copyWith(
                    weight: state.weight.copyWith(
                      value: state.weight.value - 1,
                    ),
                  ),
                );
              }
              break;
            case WeightUnit.pound:
              if (state.weight.value > minWeightPounds) {
                emit(
                  state.copyWith(
                    weight: state.weight.copyWith(
                      value: state.weight.value - 1,
                    ),
                  ),
                );
              }
              break;
          }
          break;
        case HomeChangeWeight():
          debugPrint("HomeChangeWeight triggered");
          emit(
            state.copyWith(weight: state.weight.copyWith(value: event.weight)),
          );
          break;
        case HomeChangeWeightUnit():
          if (state.weight.unit != event.unit) {
            switch (state.weight.unit) {
              case WeightUnit.kg:
                emit(
                  state.copyWith(
                    weight: Weight(
                      unit: WeightUnit.pound,
                      value: _convertKgToPounds(state.weight.value),
                    ),
                  ),
                );
                break;
              case WeightUnit.pound:
                emit(
                  state.copyWith(
                    weight: Weight(
                      unit: WeightUnit.kg,
                      value: _convertPoundsToKg(state.weight.value),
                    ),
                  ),
                );
                break;
            }
          }

          break;
        case HomeChangeHeightUnit():
          // debugPrint("HeightUnit: ${event.height.name}");
          switch (event.unit) {
            case HeightUnit.standard:
              // old state is metric and new state is standard ( convert cm to feet and inch )
              if (state.height is HeightInCM) {
                final (foot, inch) =
                    (state.height as HeightInCM).convertToFootInch();
                emit(
                  state.copyWith(
                    height: Height.fi(foot: foot, inch: inch),
                  ),
                );
              }
              break;
            case HeightUnit.metric:
              // old state is standard and new state is metric ( convert feet and inch to cm )
              if (state.height is HeightInFootInch) {
                emit(
                  state.copyWith(
                    height: Height.cm(
                      value: (state.height as HeightInFootInch).convertToCM(),
                    ),
                  ),
                );
              }
              break;
          }

          break;
        case HomeIncreaseAge():
          if (state.age < 100) {
            emit(state.copyWith(age: state.age + 1));
          }
          break;
        case HomeDecreaseAge():
          if (state.age > 2) {
            emit(state.copyWith(age: state.age - 1));
          }
          break;
      }
    });
  }

  (int, int) _convertCMtoFeetAndInch(double cmValue) {
    final feetAndInch = cmValue / 30.48;
    final feet = feetAndInch.toInt();
    final remainingFeet = feetAndInch % 1;
    final inches = (remainingFeet * 12).round();
    return (feet, inches);
  }

  int _convertPoundsToKg(int lbsValue) {
    final kgValue = lbsValue * 0.45359237;
    return kgValue.round();
  }

  int _convertKgToPounds(int kgValue) {
    final poundValue = kgValue * 2.20462262;
    return poundValue.round();
  }
}
