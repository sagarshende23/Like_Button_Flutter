import 'package:flutter/material.dart';

void main() => runApp(MyApp());
bool isFav;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    isFav = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : Colors.black87,
              size: isFav ? 60.0 : 60.0,
            ),
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
          ),
        ),
      ),
    );
  }
}
