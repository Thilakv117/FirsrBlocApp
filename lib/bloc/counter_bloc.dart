
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';


part  'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super( CounterState(0)) {
   on<CounterIncrement>((event, emit) {
    emit(CounterState(state.count + 1));
   },);
  }
}
