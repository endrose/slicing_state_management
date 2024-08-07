import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slicing_state_mangement/state/bloc/blocstate_bloc.dart';
import 'package:slicing_state_mangement/state/blocCubit_counter.dart';

class BlocState extends StatelessWidget {
  const BlocState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'BloC',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BlocstateBloc, BlocstateState>(
              builder: (context, state) => Text(
                'State ${state.counter}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.red,
                  onPressed: () {
                    context.read<BlocstateBloc>().add(EventDecrement());
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {
                    context.read<BlocstateBloc>().add(EventIncrement());
                  },
                  icon: Icon(Icons.add),
                ),
                // const SizedBox(
                //   width: 50,
                // ),
              ],
            )
          ],
        ),
      ),

      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         context.read<BlocCounter>().increment();
      //       },
      //       child: Icon(Icons.add),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //         context.read<BlocCounter>().decrement();
      //       },
      //       child: Icon(Icons.remove),
      //     ),
      //   ],
      // ),
    );
  }
}
