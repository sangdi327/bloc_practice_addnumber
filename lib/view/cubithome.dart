import 'package:cubitbloc_practice_addnumber/controller/cubit_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CubitController, int>(
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
                    context.read<CubitController>().addNumber();
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
                    context.read<CubitController>().removeNumber();
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
