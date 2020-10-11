import 'package:flutter/material.dart';
import 'package:somaiya_app/IDcardpage.dart';
import 'package:somaiya_app/collegeinfo.dart';
import 'package:somaiya_app/notification.dart';

class SVU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySVUpage(),
    );
  }
}

class MySVUPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MySVUpage extends StatefulWidget {
  @override
  _MySVUpageState createState() => _MySVUpageState();
}

class _MySVUpageState extends State<MySVUpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Somaiya VidyaVihar University",
      )),
      body: _getListView(context),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          title: Text('Contact Us'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Mail Us'),
        ),
      ]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person),
                  Text(
                    'Welcome User',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/som logo.jpeg'),
                    radius: 30,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewNotifications(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Account'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('My IDCard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IDcard(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

ListView _getListView(BuildContext context) {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (_, index) {
      return Card(
        child: Container(
          child: ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("somaiya ${index + 1}"),
            onTap: () {
              showMessage(context);
            },
            trailing: IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CollegeInfo(index)));
                }),
          ),
        ),
      );
    },
  );
}

void showMessage(BuildContext context) {
  var message = AlertDialog(
    title: Text('Click > to see college info'),
    content: Text('Welcome to SVU'),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return message;
      });
}
