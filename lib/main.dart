// This is project done for knowing world time

import 'package:flutter/material.dart';
import 'package:world/addnote.dart';
import 'package:world/home.dart';
// import 'package:hive/hive.dart';

void main(){

  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/addnote' : (context) => const AddNote(),
      },
    ),
  );
}

