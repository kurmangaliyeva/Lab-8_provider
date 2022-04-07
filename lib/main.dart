import 'package:flutter/material.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework provider',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 150;

    return Scaffold(
      appBar: AppBar(

        title: Text('Homework provider'),
        centerTitle: true,
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              child: IconButton(
                icon: (_rating >= 1
                    ? Icon(
                  Icons.rectangle,
                  size: _size,
                )
                    : Icon(
                  Icons.rectangle_outlined,
                  size: _size,
                )),

                color: Colors.purpleAccent,
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 1;
                  });
                },
              ),
            ),

            Container(
              child: IconButton(
                icon: (_rating >= 2
                    ? Icon(
                  Icons.rectangle,
                  size: _size,
                )
                    : Icon(
                  Icons.rectangle_outlined,
                  size: _size,
                )),

                color: Colors.purple,
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 2;
                  });
                },
              ),
            ),


            Container(
              child: IconButton(
                icon: (_rating > 2
                    ? Icon(
                  Icons.rectangle,
                  size: _size,
                )
                    : Icon(
                  Icons.rectangle_outlined,
                  size: _size,
                )),

                color: Colors.deepPurple,
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 3;
                  });
                },
              ),
            )

          ],
        ),
      ),


    );
  }
}
