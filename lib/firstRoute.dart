import 'package:flutter/material.dart';

import 'secondRoute.dart';

String password = "";
String email = "";


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(100, 50, 100, 5),
            child: Image.network(
              'https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (String str) {
                  setState(() {
                    email = str;
                  });
                },
              ),
            ),
          ),
           SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (String str) {
                  setState(() {
                    password = str;
                  });
                },
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: const Text(
              "Forgot password",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                if (email == "Usuario" && password == "12345") {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secondRoute()));
                }
              }),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 85, 0, 10),
            child: const Text(
              "New User? Create Account",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
      )),
    );
  }
}
