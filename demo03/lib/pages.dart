import 'package:flutter/material.dart';
import 'custom_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).push(CustomRouter(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(fontSize: 36.0),
        ),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
