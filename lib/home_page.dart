import 'package:flutter/material.dart';
import 'package:studingflu/partials/custom_drower.dart';
import 'package:studingflu/partials/custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrower(),
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            CustomSwitch(),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $counter'),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.cyan,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: const Color.fromARGB(255, 68, 83, 85),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: const Color.fromARGB(255, 109, 173, 25),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}
