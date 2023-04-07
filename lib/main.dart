import 'package:flutter/material.dart';
import 'homePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(displayColor: Colors.pink[100],bodyColor: Colors.pink[100]),
        scaffoldBackgroundColor: Color.fromRGBO(20, 20, 20, 1),
        appBarTheme: AppBarTheme(color:Color.fromRGBO(20, 20, 20, 1)),
      ),
      home: HomePage(),
    );
  }
}
