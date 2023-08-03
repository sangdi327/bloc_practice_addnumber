import 'package:cubitbloc_practice_addnumber/controller/bloc_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BlocController, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: const TextStyle(fontSize: 100),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<BlocController>().add(AddNumber());
                  },
                  child: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<BlocController>().add(RemoveNumber());
                  },
                  child: const Icon(
                    Icons.remove,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
