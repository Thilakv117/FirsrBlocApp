import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorialbloc/bloc/counter_bloc.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counterbloc = context.read<CounterBloc>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc , CounterState>(
          builder: (context , State){
            return Text(State.count.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        counterbloc.add(CounterIncrement());
      }),
    );
  }
}
