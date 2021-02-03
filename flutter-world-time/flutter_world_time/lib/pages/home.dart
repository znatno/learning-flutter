import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    // set bg image
    String bgImage = data['isDaytime'] ? 'day.JPG' : 'night.JPG';
    Color textColor = data['isDaytime'] ? Colors.grey[900] : Colors.white;

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
              child: Column(
                children: [
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location_outlined, color: textColor),
                    label: Text('Edit Location', style: TextStyle(color: textColor),),
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 1.0,
                            color: textColor
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 48,
                        color: textColor
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
