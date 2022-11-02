import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'add_todo_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  Future<void> _addTodo() async {
    final result = await showDialog(
      context: context,
      builder: (context) => const AddTodoPage(),
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        clipBehavior: Clip.none,
        onPressed:() => _addTodo(),
        label: const Text("Agregar")),
    );
  }


}