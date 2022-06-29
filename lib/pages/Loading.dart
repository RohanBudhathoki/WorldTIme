// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupworldtime() async {
    WorldTime inst =
        WorldTime(location: 'Kolkata', flag: 'India', url: 'Asia/Kolkata');
    await inst.gettime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': inst.location,
      'flag': inst.flag,
      'time': inst.time,
      'isdaytime': inst.isdaytime
    });
  }

  @override
  void initState() {
    super.initState();
    setupworldtime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 85,
          ),
        ));
  }
}
