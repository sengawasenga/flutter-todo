import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text(
            "Todo",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView(
          children: [
            TodoTile(
                taskName: "Make tutorial",
                taskCompleted: true,
                onChanged: (p0) {}),
            TodoTile(
                taskName: "Danse in fire",
                taskCompleted: false,
                onChanged: (p0) {}),
          ],
        ));
  }
}
