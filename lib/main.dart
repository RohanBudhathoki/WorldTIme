import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worldtime/pages/home.dart';

import 'package:worldtime/pages/Loading.dart';
import 'package:worldtime/pages/choose_location.dart';

void main() => runApp(GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
