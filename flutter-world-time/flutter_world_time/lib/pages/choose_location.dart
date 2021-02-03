import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Kyiv, Ukraine',   location: 'Kyiv',     flag: 'ukraine.png'),
    WorldTime(url: 'New York, US',    location: 'New York', flag: 'us.png'),
    WorldTime(url: 'London, UK',      location: 'London',   flag: 'uk.png'),
    WorldTime(url: 'Berlin, Germany', location: 'Berlin',   flag: 'germany.png'),
    WorldTime(url: 'Warsaw, Poland',  location: 'Warsaw',   flag: 'poland.png'),
    WorldTime(url: 'Tokyo, Japan',    location: 'Tokyo',    flag: 'japan.png'),
  ];

  Future<void> updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[700],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/${locations[index].flag}'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
