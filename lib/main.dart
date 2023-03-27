import 'package:flutter/material.dart';

void main() => runApp(StoreApp());

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Store App"),
        ),
        body: const Center(child: Text("Welcome to the Store App")),
      ),
    );
  }
}
