import 'package:flutter/material.dart';

import '../mainpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('메인으로'),
          onPressed: () {
            // Main page로 이동
            Navigator.push(
              context, MaterialPageRoute(builder: (_) => const MainPage())
            );
          },
        ),
      ),
    );
  }
}