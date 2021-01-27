import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Inter'),

    home: Home()
  ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.deepPurple[700],
        centerTitle: true,
      ),

      body: Row(

          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(16),
                child: Text('One'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.redAccent,
                padding: EdgeInsets.all(16),
                child: Text('Two'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.lightBlue,
                padding: EdgeInsets.all(16),
                child: Text('Three'),
              ),
            )
          ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hello moto');
        },
        child: Icon(Icons.add, size: 32),
        backgroundColor: Colors.deepPurple[700],
      ),

    );
  }
}
