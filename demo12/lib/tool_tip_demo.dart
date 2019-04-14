import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tooltip Demo')),
        body: Center(
          child: Tooltip(
            message: '调音师',
            child: Image.network(
                'https://img1.doubanio.com/view/photo/l/public/p2542774239.jpg'),
          ),
        ));
  }
}
