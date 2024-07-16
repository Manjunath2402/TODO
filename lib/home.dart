import 'package:flutter/material.dart';
import 'package:world/addnote.dart';

class Task{
  String note;
  Task({this.note = 'note'});
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
      margin: const EdgeInsets.fromLTRB(10, 10, 10 ,0),
      color: Colors.purple[50],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              n.note,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    store_task.remove(n);
                    setState(() {});
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                  ),
                  icon: const Icon(Icons.delete),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: const Text(
          'TODO App',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton.icon(
                  onPressed: (){
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent[100],
                    foregroundColor: Colors.black87,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text(
                    'Refresh',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addnote');
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
