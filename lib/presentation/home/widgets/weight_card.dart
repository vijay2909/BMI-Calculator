import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../core/colors.dart';
import '../../../core/enums.dart';
import '../../../core/extensions.dart';
import '../../../domain/repositories/static_data_repository.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_constants.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: black100,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 40,
            child: Stack(
              children: [
                Text(
                  "Weight".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: grey,
                      ),
                ),
                const Positioned(
                  right: 0,
                  child: WeightUnitSelector(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                buildWhen: (previous, current) =>
                    previous.weight != current.weight,
                builder: (BuildContext context, state) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return BlocProvider.value(
                            value: BlocProvider.of<HomeBloc>(context),
                            child: const WeightNumberPickerDialog(),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        AnimatedFlipCounter(
                          value: state.weight.value,
                          textStyle: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        Text(
                          state.weight.unit.title(),
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: grey,
                                  ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: black50,
                    ),
                    child: InkWell(
                      onTap: () {
                        context.read<HomeBloc>().add(HomeDecreaseWeight());
                      },
                      child: const Center(
                        child: Icon(Icons.remove_rounded),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: black50,
                    ),
                    child: InkWell(
                      onTap: () {
                        context.read<HomeBloc>().add(HomeIncreaseWeight());
                      },
                      child: const Center(
                        child: Icon(Icons.add_rounded),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WeightNumberPickerDialog extends StatefulWidget {
  const WeightNumberPickerDialog({super.key});

  @override
  State<WeightNumberPickerDialog> createState() =>
      WeightNumberPickerDialogState();
}

class WeightNumberPickerDialogState extends State<WeightNumberPickerDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.weight != current.weight,
        builder: (context, state) {
          final unitInPounds = state.weight.unit == WeightUnit.pound;
          return NumberPicker(
            minValue: unitInPounds ? minWeightPounds : minWeightKG,
            maxValue: unitInPounds ? maxWeightPounds : maxWeightKG,
            value: state.weight.value,
            onChanged: (value) {
              context.read<HomeBloc>().add(HomeChangeWeight(value));
            },
          );
        },
      ),
    );
  }
}

class WeightUnitSelector extends StatelessWidget {
  const WeightUnitSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, WeightUnit>(
      selector: (state) => state.weight.unit,
      builder: (context, weightUnit) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: PopupMenuButton<WeightUnit>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            initialValue: weightUnit,
            color: black50,
            elevation: 4,
            position: PopupMenuPosition.over,
            // shadowColor: Colors.white,
            onSelected: (value) {
              context.read<HomeBloc>().add(HomeChangeWeightUnit(value));
            },
            itemBuilder: (context) {
              return context
                  .read<StaticDataRepository>()
                  .getWeightUnitMenus()
                  .map((menu) {
                return PopupMenuItem(
                  value: menu.unit,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: menu.unit == weightUnit
                                ? Theme.of(context).colorScheme.secondary
                                : grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Visibility(
                          visible: menu.unit == weightUnit,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        menu.title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            child: Row(
              children: [
                Text(
                  weightUnit.name.capitalize(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: grey,
                      ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: grey,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
