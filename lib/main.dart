import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

//https://www.youtube.com/watch?v=3XipSv2CWiQ

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            Text(
              'Welcome to the login page',
              style: TextStyle(color: Colors.lightBlueAccent),
            ),
            SizedBox(height: 20.0),
            Text('Please enter your credentials'),
          ],
        ),
      ),
    );
  }
}
