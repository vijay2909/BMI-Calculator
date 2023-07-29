import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

import '../../../core/colors.dart';
import '../../../core/enums.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => previous.gender != current.gender,
      builder: (context, state) {
        return Row(
          children: [
            const SizedBox(width: 16),
            Expanded(
              child: Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  context.read<HomeBloc>().add(HomeSelectGender(Gender.male));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: state.gender == Gender.male ? black50 : black100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.male_rounded,
                        size: 48,
                        color: state.gender == Gender.male
                            ? Theme.of(context).colorScheme.onPrimary
                            : grey,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Male'.toUpperCase(),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: state.gender == Gender.male
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  context.read<HomeBloc>().add(HomeSelectGender(Gender.female));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: state.gender == Gender.female ? black50 : black100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.female_rounded,
                        size: 48,
                        color: state.gender == Gender.female
                            ? Theme.of(context).colorScheme.onPrimary
                            : grey,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Female'.toUpperCase(),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: state.gender == Gender.female
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        );
      },
    );
  }
}
