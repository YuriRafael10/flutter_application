// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.login),
                label: 'Login',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                label: 'Register',
              ),
            ],
          ),
          body: IndexedStack(
            index: _currentIndex,
            children: [
              LoginPage(), // Conteúdo da HomePage
              RegisterPage(), // Conteúdo da RegisterPage
            ],
          ),
        ),
      ),
    );
  }
}