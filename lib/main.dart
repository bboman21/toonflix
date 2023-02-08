import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      //변경된 값을 Widget build() {}에게 데이터 변경을 요청하는 함수
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 20),
              ),
              for (var n in numbers) Text('$n'),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: onClicked,
                color: Colors.pink.shade700,
                focusColor: Colors.black,
                iconSize: 100,
                icon: const Icon(
                  Icons.add_circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
