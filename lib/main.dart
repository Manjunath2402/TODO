// This is project done for knowing world time

import 'package:flutter/material.dart';
import 'package:world/addnote.dart';
import 'package:world/home.dart';
import 'package:world/loading.dart';
// import 'package:hive/hive.dart';

void main(){

  runApp(
    MaterialApp(
      // Routes in flutter. These are like maps.
      // In these Routes the key would be the actual routes to the Widgets
      // or say the files in our project.

      // home: Home(),
      initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => Home(),
        '/addnote' : (context) => const AddNote(),
      },
    ),
  );
}

