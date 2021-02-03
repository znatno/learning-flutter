import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;  // name for the UI
  String time;      // the time for that location
  String flag;      // url to an asset flag icon
  String url;       // location url for api endpoint
  bool isDaytime;   // if daytime or not

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try {
      // request
      Response response = await get('https://timezone.abstractapi.com/v1/current_time?api_key=8b013486a7c8497ab2f210aabdd4594f&location=$url');
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      int offset = data['gmt_offset'];
      // print(datetime);

      // DateTime obj
      DateTime now = DateTime.parse(datetime);
      // print(now);
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }

  }

}