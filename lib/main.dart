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

      home: myHomePage(),
      // Container(
      //     // title: 'Flutter Demo Home Page',
      //     color: Colors.blue,
      //     margin: EdgeInsets.all(100.0),
      // ),
    );
  }
}

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.blue,
                ),
                Text(
                  '$index',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          );
        },itemCount:count
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Icon(Icons.add),
          label: Text("Click me")),
    );
  }
}
