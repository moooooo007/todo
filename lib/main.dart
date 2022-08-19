import 'package:flutter/material.dart';
import 'package:todo/SplashScreen.dart';
import 'package:todo/home.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "SplashScreen" :(_)=> SplashScreen(),
        "home" :(_)=> home(),
    },
    initialRoute:"home" ,
    );
  }
}
