import 'package:flutter/material.dart';
import 'package:world/home.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {

  final TextEditingController controltext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inside Add Note'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              // border: BoxBorder(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Text(
                //   'Title',
                // ),
                const SizedBox(height: 15.0,),
                TextField(
                  controller: controltext,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Note',
                  ),
                ),
                const SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // cancel button
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        store_task.add(Task(note:controltext.text));
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
