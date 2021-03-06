import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int heroLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Hero ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            heroLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.jpg'),
                radius: 64,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[700],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.75,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.75,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '$heroLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 21,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'EMAIL',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.75,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[300],
                ),
                SizedBox(width: 10),
                Text(
                  'znatno@icloud.com',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 16,
                    letterSpacing: 0.5
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
