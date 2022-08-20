import 'package:flutter/material.dart';
import 'package:todo/SplashScreen.dart';
import 'package:todo/home.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(  );
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
