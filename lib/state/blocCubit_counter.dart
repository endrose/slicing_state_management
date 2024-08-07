import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCubitCounter extends Cubit<int> {
  BlocCubitCounter(super.initialStat);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
