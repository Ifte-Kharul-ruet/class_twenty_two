import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'User Login',
            style: Theme.of(context).textTheme.headline1,
          ),
          TField(
            lText: 'Email/Phone Number',
          ),
          TField(
            lText: 'Password',
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login Button is not Implemented'),
                  elevation: 50,
                  behavior: SnackBarBehavior.floating,
                  //shape: S,
                ),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

class TField extends StatelessWidget {
  final String lText;
  const TField({
    Key? key,
    required this.lText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            // fillColor: Colors.grey,
            // focusColor: Colors.green,
            // filled: true,
            labelText: lText,
            labelStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }
}
