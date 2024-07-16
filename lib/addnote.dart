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
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
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
                SizedBox(height: 15.0,),
                TextField(
                  controller: controltext,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Note',
                  ),
                ),
                SizedBox(height: 15.0,),
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
                      child: Text(
                        'Cancel',
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        // print(controltext.text);
                        store_task.add(Task(note:controltext.text));
                        // newTask.note = controltext.text;
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      child: Text(
                        'Save',
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
