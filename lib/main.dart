import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
//set sempre recebe um map
  FirebaseFirestore.instance.collection('mensagens').doc('msg 2').set({
    'texto':'João'
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FireChat",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(

        ),
        );
    }
}