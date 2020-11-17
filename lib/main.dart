import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_second_project/Widgets/Forground.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "VelocityX Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ZStack(
        [
          Positioned(
            bottom: height/2.4,
            child: Image.network('https://i.ibb.co/Y2CNM8V/new-york.jpg'),
            height: height,
          ),
          Positioned(
            bottom: 0,
              child: VxBox(
          ).height(height/2.4).width(width).color(Color(0xFF2D2C35)).make()
          ),
          Forground()
        ]
    );
  }
}
