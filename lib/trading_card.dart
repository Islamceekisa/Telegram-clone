import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class LiveTrading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ["a", "b"].length,
      itemBuilder: _buildCrypto,
    );
  }

  Widget _buildCrypto(BuildContext context, int index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      liveCrypto[index].iconImage,
                      height: 100,
                    ),
                    Text(
                      liveCrypto[index].name,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      '\$' + liveCrypto[index].price.toString(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Container(
                      height: 30.0,
                      width: 50.0,
                      child: Sparkline(
                        data: liveCrypto[index].graphData,
                        lineColor: Colors.pinkAccent,
                      ),
                    )
                  ]))
        ],
      ),
    );
  }
}
