import 'package:flutter/material.dart';

class IDcard extends StatefulWidget {
  @override
  _IDcardState createState() => _IDcardState();
}

class _IDcardState extends State<IDcard> {
  int sem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[200],
      appBar: AppBar(
        title: Text('Somaiya ID Card'),
        backgroundColor: Colors.redAccent[200],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sem += 1;
          });
        },
        child: Icon(Icons.add),
        tooltip: 'Update Sem',
        backgroundColor: Colors.red[300],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Image.asset('image/SomTrust.jpeg'),
                  width: 100,
                  height: 100,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('image/SomLogo.jpeg'),
                  radius: 40,
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 40,
            ),
            SizedBox(height: 10),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.brown,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Dev Vora',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'BRANCH',
              style: TextStyle(
                color: Colors.brown,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Information Technology',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'SEMESTER',
              style: TextStyle(
                color: Colors.brown,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$sem',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  'EMAIL ID',
                  style: TextStyle(
                    color: Colors.brown,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'dev.vora@somaiya.edu',
              style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(Icons.phone, color: Colors.black),
                Text(
                  'CONTACT',
                  style: TextStyle(
                    color: Colors.brown,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              '9930321166',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
