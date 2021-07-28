import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Contacts'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                tooltip: 'add',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          // ...rest of body...
        ],
      ),
    );
  }
}
