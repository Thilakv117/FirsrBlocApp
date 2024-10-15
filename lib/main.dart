import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorialbloc/Pages/counter_page.dart';
import 'package:tutorialbloc/bloc/counter_bloc.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> CounterBloc()),
        ],
        child: HomePage(),
      ),
    );
  }
}