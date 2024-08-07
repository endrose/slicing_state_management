import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'blocstate_event.dart';
part 'blocstate_state.dart';

class BlocstateBloc extends Bloc<BlocstateEvent, BlocstateState> {
  BlocstateBloc() : super(BlocStateInitial(0)) {
    on<EventIncrement>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(state.counter + 1));
    });

    on<EventDecrement>((event, emit) {
      if (state.counter < 1) return false;

      emit(state.copyWith(state.counter - 1));
    });
  }
}
