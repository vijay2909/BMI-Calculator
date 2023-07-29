import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../core/colors.dart';
import '../../domain/models/bmi_category.dart';

class BMIResultScreen extends StatefulWidget {
  const BMIResultScreen({super.key, required this.bmiCategory});

  final BMICategory bmiCategory;

  @override
  State<BMIResultScreen> createState() => _BMIResultScreenState();
}

class _BMIResultScreenState extends State<BMIResultScreen> {
  Text _appBarTitle() {
    return Text(
      'BMI Calculator',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
    );
  }

  SizedBox _buttonReCalculateBMI() {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        child: Text(
          'Re-Calculate your BMI',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
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
      bottomNavigationBar: _buttonReCalculateBMI(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Health',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: black100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 32,
                    ),
                    child: Column(
                      children: [
                        ShowUpAnimation(
                          direction: Direction.vertical,
                          curve: Curves.bounceIn,
                          offset: -0.4,
                          child: Text(
                            widget.bmiCategory.status,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      const Color.fromARGB(255, 137, 246, 140),
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Countup(
                          begin: 0.0,
                          end: widget.bmiCategory.bmi,
                          precision: 2,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 56,
                                fontWeight: FontWeight.bold,
                              ),
                          duration: const Duration(milliseconds: 1000),
                        ),
                        /* Text(
                          widget.bmiCategory.bmi.toPrecision(2).toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 56,
                                fontWeight: FontWeight.bold,
                              ),
                        ), */
                        const SizedBox(height: 48),
                        ShowUpAnimation(
                          direction: Direction.horizontal,
                          offset: -0.2,
                          child: Text(
                            '${widget.bmiCategory.status} BMI Range:',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: grey,
                                ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        ShowUpAnimation(
                          direction: Direction.horizontal,
                          offset: -0.2,
                          child: Text(
                            widget.bmiCategory.bmiRange,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ),
                        const SizedBox(height: 48),
                        ShowUpAnimation(
                          direction: Direction.horizontal,
                          child: Text(
                            widget.bmiCategory.description,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
