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
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(background: ProfileCard()),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [SliverListDetail()],
          ),
        ),
        SliverFillRemaining(child: LiveTrading(crypto))
      ],
    ));
  }

  Widget SliverListDetail() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text('LIVE TRADING'),
            ),
            Container(
              child: ElevatedButton(
                child: Text(
                  'Buy',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            )
          ]),
    );
  }
}
