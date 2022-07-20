
import 'package:flutter/material.dart';
import 'package:projeto_tarefas/models/cards.dart';

import 'resources/colors.dart';
import 'resources/strings.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyTasks()));
}

class MyTasks extends StatefulWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  TextEditingController tituloControl = TextEditingController();
  TextEditingController descricaoControl = TextEditingController();

  void delete() {
    showModalBottomSheet(
        context: context,
        
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(40.0) )   ),
        builder: (contexto) => Wrap(
          children: [
            Column(
                  children: [
                    const SizedBox(height: 15.0,),
                    const Text(Strings.excludeTask, style: TextStyle(fontSize: 18.0)),
                    const SizedBox(height: 15.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    
                      children: [
                        
                        
                        
                         Container(
                          color: Cores.vitalGreen,
                          width: 30.0,
                          height: 30.0,
                          alignment: Alignment.center,
                          child: const Icon(Icons.done_all_sharp, color: Cores.white),
                        ),
                        const SizedBox(width: 30.0,),
                        Container(
                          color: Cores.mediumRed,
                          width: 30.0,
                          height: 30.0,
                          alignment: Alignment.center,
                          child: const Icon(Icons.remove_circle_outline, color: Cores.white),
                        ),
                      ],
                    )
                  ],
                ),
          ],
        ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.backgroundGrey,
      appBar: AppBar(
        backgroundColor: Cores.brightGrey,
        title:
            const Text(Strings.appName, style: TextStyle(color: Cores.black)),
      ),
      body: ListView(padding: const EdgeInsets.all(6.0), children: [
        CartItems(onItemDelete: delete),
        CartItems(onItemDelete: delete),
        CartItems(onItemDelete: delete),
        CartItems(onItemDelete: delete),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Cores.buttonPink,
        onPressed: () => showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(40.0) )   ),
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                  const SizedBox(height: 30.0,),
                  const Text(Strings.bottomTask,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Título',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    controller: tituloControl,
                    readOnly: true,
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Descrição',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    controller: descricaoControl,
                    readOnly: true,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                            color: Cores.mediumRed,
                            width: 30.0,
                            height: 30.0,
                            alignment: Alignment.center,
                            child: const Icon(Icons.save_sharp, color: Cores.white),
                          ),
                    ],
                  ),
                ],
              ),
            );
          },
          isDismissible: false,
        ),
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
