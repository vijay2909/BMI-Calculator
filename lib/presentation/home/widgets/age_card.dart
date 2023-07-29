import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/colors.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class AgeCard extends StatelessWidget {
  const AgeCard({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Age".toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: grey,
                ),
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocSelector<HomeBloc, HomeState, int>(
                selector: (state) => state.age,
                builder: (context, age) {
                  return AnimatedFlipCounter(
                    value: age,
                    textStyle:
                        Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w900,
                            ),
                  );
                },
              ),
              Row(
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
                        context.read<HomeBloc>().add(HomeDecreaseAge());
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
                        context.read<HomeBloc>().add(HomeIncreaseAge());
                      },
                      child: const Center(
                        child: Icon(Icons.add_rounded),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
