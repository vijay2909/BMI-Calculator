import 'package:bmi_calculator/domain/models/bmi_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../bmi_result/bmi_result_screen.dart';
import 'bloc/home_bloc.dart';
import 'widgets/age_card.dart';
import 'widgets/gender_selector.dart';
import 'widgets/height_card.dart';
import 'widgets/weight_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Text _appBarTitle() {
    return Text(
      'BMI Calculator',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
    );
  }

  Widget _buttonCalculateBMI() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {},
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            final state = context.read<HomeBloc>().state.getBMICategory();

            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) =>
                    BMIResultScreen(bmiCategory: state),
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(
            'Calculate your BMI',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarTitle(),
        centerTitle: true,
      ),
      bottomNavigationBar: _buttonCalculateBMI(),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ShowUpAnimation(
                  animationDuration: const Duration(milliseconds: 1000),
                  child: const GenderSelector(),
                ),
                const SizedBox(height: 16),
                ShowUpAnimation(
                  animationDuration: const Duration(milliseconds: 1000),
                  child: const HeightCard(),
                ),
                const SizedBox(height: 16),
                ShowUpAnimation(
                  animationDuration: const Duration(milliseconds: 1000),
                  child: const WeightCard(),
                ),
                const SizedBox(height: 16),
                ShowUpAnimation(
                  animationDuration: const Duration(milliseconds: 1000),
                  child: const AgeCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
