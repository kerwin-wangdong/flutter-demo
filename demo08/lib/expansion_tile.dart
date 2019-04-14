import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile'),
      ),
      body: Center(
        child: ExpansionTile(
          initiallyExpanded: true,
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('List Tile Title'),
              subtitle: Text('SubTitle'),
            )
          ],
        ),
      ),
    );
  }
}
