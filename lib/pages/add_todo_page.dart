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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: titulo,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                              hintText: "Titulo", border: InputBorder.none),
                        )),
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: asunto,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                              hintText: "Asunto", border: InputBorder.none),
                        ))
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Text("Seleccionar un color",style: TextStyle(fontSize: 20),),
            ),
            Expanded(
                child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: Colors.primaries.length,
              itemBuilder: (context, index) {
                final color = Colors.primaries[index];
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: InkWell(
                    onTap: () => setState(() {
                      selectColor = color;
                    }),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: color,
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
