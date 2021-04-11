import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  )); // placing our root widget
  // MaterialApp allows us to create blank app and use google design features
  // It is the wrapper for rest of the app
}

// Every widget is basically a class and the widgets we call are just instances of the class

// StatelessWidget: state of widget cannot change over time, final values only
// Enables hot reload and makes code drier and reusable

// StatefulWidget: state of widget can change over time
class Home extends StatelessWidget {
  @override // The build function overrides the StatelessWidget's build function
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true, // option-like
          backgroundColor: Colors.red[
              600] // all colours from material design available // [] shows strength
          ), // appBar property having AppBar widget

      // body: Center(
      //   child: Text(
      //     'Hello, World!',
      //     style: TextStyle(
      //       fontSize: 40.0,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 2,
      //       color: Colors.grey[600],
      //       fontFamily: 'FugazOne',
      //     ),
      //   ), // widgets can be nested using child property
      // ),

      //   child: Image(
      //   //   image: NetworkImage(
      //   //       'https://images.unsplash.com/photo-1445197138520-6099f1c07aa0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80'),
      //   // ),
      //   image: AssetImage('assets/red-3.jpg'),
      // )

      // child: Image.asset('assets/red-2.jpg'),
      // Same applies for Image.network()

      // child: Icon(
      // Icons.airport_shuttle,
      // color: Colors.lightBlue,
      // size: 80,)

      // child: RaisedButton(
      //   onPressed: () {},
      //   child: Text(
      //     'Click me',
      //   ),
      //   color: Colors.lightBlue,
      // ),

      // child: FlatButton(
      //   onPressed: () {
      //     print('You clicked me!!!');
      //   },
      //   child: Text(
      //     'Click me',
      //   ),
      // color: Colors.lightBlue,
      // ),

      //   child: RaisedButton.icon(
      //   onPressed: () {},
      //   icon: Icon(Icons.mail),
      //   label: Text('Mail me'),
      //   color: Colors.amber,
      // )

      // child: IconButton(
      //     onPressed: () {
      //       print('You clicked me!');
      //     },
      //     icon: Icon(Icons.alternate_email),
      //     color: Colors.amber),

      // body: Container(
      //   // container acts as wrapper to all widgets
      //   // container restricts itself to size of child widgets
      //   padding: EdgeInsets.fromLTRB(
      //       10.0, 20.0, 30.0, 40.0), // padding goes inside the container
      //   margin: EdgeInsets.all(
      //       30.0), // margin goes outside and around the container
      //   color: Colors.grey[400],
      //   child: Text('HELLO!!'),
      // ),

      // body: Padding(
      //   // doesn't allow margin, color property
      //   padding: EdgeInsets.all(90.0),
      //   child: Text('HELLOOOO!'),
      // ),

      // body: Row(
      //   // main axis:going across the row (towards right)
      //   // cross axis:perpendicular axis (downwards)
      //   mainAxisAlignment: MainAxisAlignment
      //       .spaceEvenly, // controlls how things are alligned on the axis
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('Hello, World!'),
      //     FlatButton(
      //       onPressed: () {},
      //       color: Colors.amber[600],
      //       child: Text('Click ME!!'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('Inside container'),
      //     )
      //   ], // multiple child widgets
      // ),

      body: Column(
        // main axis is vertical and cross axis is horizontal
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [Text('HELLO'), Text('WORLD!')],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('ONE'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green[600],
            child: Text('TWO'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.purple[200],
            child: Text('THREE'),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // takes an anon. function
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    ); // Scaffold widget acts like a wrapper for different general layout widgets
  }
}
