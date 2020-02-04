import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'button_dashboard.dart';
import 'user_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserInput(),
      //  home: MqttApp(),
      //home: TxtReadAndWrite(storage: CounterStorage()),
      //home:  CreateDirectory(),
     // home: ButtonDashboard(),
    );
  }
}
