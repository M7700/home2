
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Container'),
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.info),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(16),
              child: Text(
                'I am container',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Transform.rotate(
              angle: -0.3,
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: Text(
                  'Hai, I am Slanting',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Transform.rotate(
              angle: 0.2,
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16),
                child: Text(
                  'I am also Slanting, but see my edges',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              width: 150,
              height: 150,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 120,
                    height: 120,
                  ),
                  Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                  ),
                  Container(
                    color: Colors.red,
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
