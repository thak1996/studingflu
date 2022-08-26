import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text('Contador: $counter'),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
