import 'package:flutter/material.dart';

void main() {
  runApp(const ViewOrdersScreen());
}

class ViewOrdersScreen extends StatelessWidget {
  const ViewOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('View Orders'),
        ),
        body: const Center(child: Text('View Orders Screen')),
      ),
    );
  }
}