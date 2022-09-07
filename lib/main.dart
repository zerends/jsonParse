

import 'package:flutter/material.dart';

import 'package:json_parse_kullanimi/anaSayfa.dart';

void main() {
  runApp(const MyApp());
}

//Get: webservis bizden veri istemez ise
//Post :WebServis bizden veri istese

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const AnaSayfa(),
    );
  }
}

