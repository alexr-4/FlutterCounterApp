import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {

    const estilsText = TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold);
    

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),

          const SizedBox(width: 20),

           FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              counter--;
              setState(() {});
            },
          ),

        ],
      ),

      appBar: AppBar(title: const Text("CounterScreen"), elevation: 25,
      ),
      body: Center(
        child: Column(
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
