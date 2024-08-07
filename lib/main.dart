import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slicing_state_mangement/screens/bloc.dart';
import 'package:slicing_state_mangement/state/bloc/blocstate_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management',
      home: BlocProvider<BlocstateBloc>(
        create: ((_) => BlocstateBloc()),
        child: const BlocState(),
      ),
    );
  }
}
