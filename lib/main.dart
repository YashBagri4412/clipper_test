import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClipperTest(),
    );
  }
}

class ClipperTest extends StatefulWidget {
  @override
  _ClipperTestState createState() => _ClipperTestState();
}

class _ClipperTestState extends State<ClipperTest> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper Test"),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.50,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
