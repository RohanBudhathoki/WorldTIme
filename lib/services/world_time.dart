import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location; //location name for the ui

  late String time; //time  in that location
  String? flag; //URl to asset flag icon
  String? url;
  bool? isdaytime;

  // ignore: non_constant_identifier_names
  WorldTime({this.location, this.flag, this.url, this.isdaytime});

  Future<void> gettime() async {
    try {
      //requesting
      Response responce =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(responce.body);
      //print(data);

      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(0, 3);

      //print(datetime);
      //print(offset);

      //create date and time

      DateTime now = DateTime.parse(datetime);
      now = now
          .add(Duration(hours: int.parse(offset), minutes: int.parse(offset)));
      //print(now);

      //set time prop
      isdaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      print('error caught $e');
      time = 'there was an error';
    }
  }
}
