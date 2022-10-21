import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo/SplashScreen.dart';
import 'package:todo/home.dart';


 main()async {
   WidgetsFlutterBinding.ensureInitialized();
   Directory Path = await getApplicationDocumentsDirectory();
   await Hive.initFlutter(Path.path);
   Hive.openBox("TODO");
   runApp (const ToDo());
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
