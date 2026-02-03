import 'package:flutter/material.dart';

void main() {
  // maa() → main()으로 수정
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Flutter App"),
          backgroundColor: Colors.blue,
        ),
        body: const Text(
          "이제 예쁘게 나올걸?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 61, 190, 126),
          ),
        ),
      ),
    );
  }
}
