import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: nodes(),
    );
  }
}

// ignore: camel_case_types
class nodes extends StatefulWidget {
  nodes({super.key});

  @override
  State<nodes> createState() => _nodesState();
}

// ignore: camel_case_types
class _nodesState extends State<nodes> {
  Expanded nodeTile({required int nodeSound, required Color color}) {
    final player = AudioPlayer();
    return Expanded(
      child: TextButton(
        onPressed: () async {
          await player.setSource(AssetSource('note$nodeSound.wav'));
          debugPrint("Sound played with the node of node$nodeSound.wav");
        },
    
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color),elevation: MaterialStatePropertyAll(6)),
        // child: Image.asset("assets/ector.png",fit: BoxFit.scaleDown,),
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              nodeTile(nodeSound: 1,color:Colors.red),
              nodeTile(nodeSound: 2,color:Colors.orange),
              nodeTile(nodeSound: 3,color:Colors.yellow),
              nodeTile(nodeSound: 4,color:Colors.green),
              nodeTile(nodeSound: 5,color:Colors.blue),
              nodeTile(nodeSound: 6,color:Colors.purple),
              nodeTile(nodeSound: 7,color:Colors.teal ),
            ],
          ),
        ),
      ),
    );
  }
}
