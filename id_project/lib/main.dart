import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        spreadRadius: 2.0)
                  ],
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/av.jpeg'),
                  radius: 40.0,
                ),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueGrey[800],
            ),
            Center(
              child: Container(
                width: 270,
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        spreadRadius: 1.0)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NAME',
                      style:
                          TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
                    ),
                    SizedBox(
                        height: 10.0), // adds a box, here it will add space
                    Text(
                      'Rohini Rao',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30.0),

                    Text(
                      'RANK',
                      style:
                          TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
                    ),
                    SizedBox(
                        height: 10.0), // adds a box, here it will add space
                    Text(
                      '$counter',
                      style: TextStyle(
                          color: Colors.cyan[900],
                          letterSpacing: 2.0,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 30.0),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.blueGrey,
                          size: 35.0,
                        ),
                        SizedBox(width: 10.0),
                        Text('rohini@xyz.com',
                            style: TextStyle(
                                color: Colors.cyan[900],
                                letterSpacing: 1.0,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
