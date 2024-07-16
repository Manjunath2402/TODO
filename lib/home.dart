import 'package:flutter/material.dart';
import 'package:world/addnote.dart';

class Task{
  String note;
  static int counter = 0;
  Task({this.note = 'note'}) {
    counter++;
  }
  // Task(note){
  //   this.note = note;
  //   counter++;
  // }
}


List<Task> store_task = [
  Task(note: 'This is one of the string'),
  Task(note: 'This is another one of the string')
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget NoteTemplate(n){
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10 ,0),
      color: Colors.purple[50],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              n.note,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int fun(int x){
    while (x == Task.counter);
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TODO App',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),

      body: Column(
        children: [
          Column(
            children: store_task.map((n) => NoteTemplate(n)).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton.icon(
                  onPressed: () async {
                    int tempCounter = Task.counter;
                    Navigator.pushNamed(context, '/addnote');
                    await fun(tempCounter);
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent[100],
                    foregroundColor: Colors.black87,
                  ),
                  icon: const Icon(
                    Icons.add,
                  ),
                  label: const Text(
                    'Add Note',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
