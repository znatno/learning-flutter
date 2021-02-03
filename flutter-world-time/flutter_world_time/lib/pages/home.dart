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

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 48, 8, 0),
            child: Column(
              children: [
                FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location_outlined),
                    label: Text('Edit Location')
                ),
                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 48
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
