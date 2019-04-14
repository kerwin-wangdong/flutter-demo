import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bezier curve'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper2(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    var firstBezierControlPoint = Offset(size.width / 4, size.height);
    var firstBezierEndPoint = Offset(size.width / 2.25, size.height - 30);
    path.quadraticBezierTo(
        firstBezierControlPoint.dx,
        firstBezierControlPoint.dy,
        firstBezierEndPoint.dx,
        firstBezierEndPoint.dy);
    var secondBezierControlPoint = Offset(size.width / 4 * 3, size.height - 90);
    var secondBezierEndPoint = Offset(size.width, size.height - 60);
    path.quadraticBezierTo(
        secondBezierControlPoint.dx,
        secondBezierControlPoint.dy,
        secondBezierEndPoint.dx,
        secondBezierEndPoint.dy);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
