import 'package:flutter/material.dart';

class CollegeInfo extends StatefulWidget {
  final int index;
  CollegeInfo(this.index);

  @override
  _CollegeInfoState createState() => _CollegeInfoState();
}

class _CollegeInfoState extends State<CollegeInfo> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Sports"),
    ListItem(2, "Scholarships"),
    ListItem(3, "Library"),
    ListItem(4, "Events")
  ];
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }
  //int _value = 1;

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    Widget facility = Container(
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue,
          border: Border.all()),
      child: DropdownButton<ListItem>(
          value: _selectedItem,
          items: _dropdownMenuItems,
          onChanged: (value) {
            setState(() {
              _selectedItem = value;
            });
          }),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SVU ${widget.index + 1}',
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  showSnackBar(context);
                });
          }),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/svu2.jpg"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: new Text(
              'SVU ${widget.index + 1}',
              style: TextStyle(
                  fontSize: 35, fontFamily: 'TradeWinds', color: Colors.white),
            ),
          ),
          facility,
        ],
      ),
    );
  }
}

showSnackBar(BuildContext context) {
  var snackBar = SnackBar(
    content: Text('Go Back to see more colleges'),
    backgroundColor: Colors.green,
    duration: Duration(seconds: 3),
    action: SnackBarAction(
        label: "OK",
        onPressed: () {
          print('Thanks for Visting');
        }),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
