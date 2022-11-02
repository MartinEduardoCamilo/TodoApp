import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  Color selectColor = Colors.primaries.first;
  final TextEditingController titulo = TextEditingController();
  final TextEditingController asunto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SizedBox(
        height: sizes.height / 1.5,
        width: sizes.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: selectColor,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(10), 
                        child: TextFormField()
                    ),
                    const SizedBox(height: 20,),
                    Container(
                        margin: const EdgeInsets.all(10), 
                        child: TextFormField(
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
