import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const estilsText = TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold);
    var counter = 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("hola mundo! $counter");
        },
        child: Icon(Icons.add),
      ),

      appBar: AppBar(title: const Text("HomeScreen"), elevation: 25,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador de clicks:', style: estilsText,),
            Text(counter.toString(), style: estilsText),
          ],
        ),
      ),
    );
  }
}
