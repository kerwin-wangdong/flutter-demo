import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('调音师'),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              'https://img1.doubanio.com/view/photo/l/public/p2542774239.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 1000.0,
                    height: 1000.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://img1.doubanio.com/view/photo/l/public/p2542774239.jpg',
                width: 300.0,
              ),
              Text(
                '调音师',
                style: Theme.of(context).textTheme.display1,
              )
            ],
          ))
        ],
      ),
    );
  }
}
