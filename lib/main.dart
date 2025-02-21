import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

// UI와 Data를 저장함
class _MainAppState extends State<MainApp> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click Count", style: TextStyle(fontSize: 30)),
              for (var n in numbers) Text("$n"),
              IconButton(
                onPressed: onClicked,
                icon: Icon(Icons.add_box_rounded),
                iconSize: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
