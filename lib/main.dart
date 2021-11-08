import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO: Add More Styling
      theme: ThemeData(
          //scaffoldBackgroundColor: Colors.indigo,
          primarySwatch: Colors.amber,
          primaryColor: Colors.amber,
          accentColor: Colors.black26,
          // buttonColor: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              fixedSize: MaterialStateProperty.all<Size>(Size.fromRadius(50.0)),
            ),
          ),
          // buttonTheme: ButtonThemeData(
          //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
          // ),
          textTheme: TextTheme(
              headline1: TextStyle(
            fontFamily: 'Moshi',
            color: Colors.black,
            fontSize: 50,
            //fontWeight: FontWeight.bold,
          ))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: LoginPage(),
    );
  }
}
