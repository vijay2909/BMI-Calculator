import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/colors.dart';
import 'data/repositories/static_data_repository_impl.dart';
import 'domain/data_providers/home_data_provider.dart';
import 'domain/repositories/static_data_repository.dart';
import 'presentation/home/bloc/home_bloc.dart';
import 'presentation/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: black,
        colorScheme: const ColorScheme.light(
          primary: black,
          onPrimary: Colors.white,
          secondary: pink,
          onSecondary: Colors.white,
        ),
        fontFamily: 'Poppins',
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
          titleSmall: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
          titleLarge: TextStyle(
            fontSize: 22,
            fontFamily: 'Poppins',
          ),
          headlineMedium: TextStyle(
            fontSize: 30,
            fontFamily: 'Poppins',
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: BlocProvider(
        create: (BuildContext context) {
          return HomeBloc();
        },
        child: RepositoryProvider<StaticDataRepository>(
          create: (BuildContext context) {
            return StaticDataRepositoryImpl(HomeDataProvider());
          },
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
