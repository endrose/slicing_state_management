part of 'blocstate_bloc.dart';

@immutable
abstract class BlocstateEvent {}

class EventIncrement extends BlocstateEvent {}

class EventDecrement extends BlocstateEvent {}
