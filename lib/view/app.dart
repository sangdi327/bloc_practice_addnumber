import 'package:cubitbloc_practice_addnumber/controller/bloc_controller.dart';
import 'package:cubitbloc_practice_addnumber/controller/cubit_controller.dart';
import 'package:cubitbloc_practice_addnumber/view/blochome.dart';
import 'package:cubitbloc_practice_addnumber/view/cubithome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => CubitController(),
                        child: const CubitHome(),
                      );
                    },
                  ),
                );
              },
              child: const Text('cubit home'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => BlocController(),
                        child: const BlocHome(),
                      );
                    },
                  ),
                );
              },
              child: const Text('bloc home'),
            ),
          ],
        ),
      ),
    );
  }
}
