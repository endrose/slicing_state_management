part of 'blocstate_bloc.dart';

@immutable
class BlocstateState {
  int counter = 0;
  BlocstateState(this.counter);

  BlocstateState copyWith(int counter) => BlocstateState(counter);
  // BlocstateState copyWith(int? counter) =>
  //     BlocstateState(counter ?? this.counter);
}

class BlocStateInitial extends BlocstateState {
  BlocStateInitial(super.counter);
}
