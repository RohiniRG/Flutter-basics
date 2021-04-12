import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/av.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blueGrey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0), // adds a box, here it will add space
            Text(
              'Rohini Rao',
              style: TextStyle(
                  color: Colors.cyan,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),

            Text(
              'RANK',
              style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0), // adds a box, here it will add space
            Text(
              '1',
              style: TextStyle(
                  color: Colors.cyan,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.blueGrey),
                SizedBox(width: 10.0),
                Text('rohini@xyz.com',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 1.0,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
