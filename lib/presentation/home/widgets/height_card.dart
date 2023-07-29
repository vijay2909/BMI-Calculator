import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/colors.dart';
import '../../../core/enums.dart';
import '../../../core/extensions.dart';
import '../../../domain/models/height.dart';
import '../../../domain/repositories/static_data_repository.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: black100,
      ),
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 40,
            child: Stack(
              children: [
                Text(
                  "Height".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: grey,
                      ),
                ),
                const Positioned(
                  right: 0,
                  child: HeightUnitSelector(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) => previous.height != current.height,
            builder: (BuildContext context, state) {
              switch (state.height) {
                case HeightInCM height:
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedFlipCounter(
                        value: height.value,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      Text(
                        'cm',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                    ],
                  );
                case HeightInFootInch height:
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedFlipCounter(
                        value: height.foot,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      Text(
                        "'",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      AnimatedFlipCounter(
                        value: height.inch,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      Text(
                        '"',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                      )
                    ],
                  );
              }
              /* return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: state.currentHeight.toString(),
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w900,
                              ),
                      children: state.height is HeightInCM
                          ? [
                              TextSpan(
                                text: 'cm',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: grey,
                                    ),
                              ),
                            ]
                          : null,
                    ),
                  ),
                ],
              ); */
            },
          ),
          const SizedBox(height: 8),
          const HeightSlider(),
        ],
      ),
    );
  }
}

class HeightUnitSelector extends StatelessWidget {
  const HeightUnitSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HeightUnit>(
      selector: (state) => state.heightUnit,
      builder: (context, heightUnit) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: PopupMenuButton<HeightUnit>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            initialValue: heightUnit,
            color: black50,
            elevation: 4,
            position: PopupMenuPosition.over,
            // shadowColor: Colors.white,
            onSelected: (value) {
              context.read<HomeBloc>().add(HomeChangeHeightUnit(value));
            },
            itemBuilder: (context) {
              return context
                  .read<StaticDataRepository>()
                  .getHeightUnitMenus()
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
                            color: menu.unit == heightUnit
                                ? Theme.of(context).colorScheme.secondary
                                : grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Visibility(
                          visible: menu.unit == heightUnit,
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
                  heightUnit.name.capitalize(),
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

class HeightSlider extends StatefulWidget {
  const HeightSlider({
    super.key,
  });

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, int>(
      builder: (BuildContext context, value) {
        return Slider(
          value: value.toDouble(),
          onChanged: (value) {
            context.read<HomeBloc>().add(HomeSelectHeight(value));
          },
          thumbColor: Theme.of(context).colorScheme.secondary,
          activeColor: Colors.white,
          inactiveColor: grey,
          max: 200,
          min: 50,
          overlayColor: MaterialStatePropertyAll(
            Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          ),
        );
      },
      selector: (state) => state.heightSliderValue,
    );
  }
}
