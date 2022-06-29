import 'package:flutter/material.dart';

import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    //   WorldTime(url: 'Africa/Nairobi', Location: 'Nairobi', flag: 'kenya.png'),
    //   WorldTime(url: 'America/Chicago', Location: 'Chicago', flag: 'usa.png'),
    //   WorldTime(url: 'America/New_York', Location: 'New York', flag: 'usa.png'),
    //   WorldTime(url: 'Asia/Seoul', Location: 'Seoul', flag: 'south_korea.png'),
    //   WorldTime(url: 'Asia/Jakarta', Location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            WorldTime worldTime = locations[index];
            return Card(
              child: ListTile(
                title: Text(worldTime.location.toString()),
                onTap: () {},
              ),
            );
          }),
    );
  }
}
