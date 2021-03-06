import 'dart:ui';

import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int imageIndex;

  List<String> cardImages = [
    "https://uzoplata.com/wp-content/uploads/2017/01/MObiuzums.png"
  ];

  Widget get backgroundImage => Image.network(
        "https://images.unsplash.com/photo-1550147760-44c9966d6bc7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );

  Widget headText({String text, double size}) => Text(
        text,
        style: TextStyle(fontSize: size, color: Colors.white),
      );

  Widget paymentCard(String text, IconData icon) => Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(icon, color: Colors.teal[300]),
                SizedBox(width: 24),
                Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[850],
          ),
        ),
      );

  Widget circleItems({String text, IconData icon}) => Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),
          headText(text: text)
        ],
      );

  Widget get transwerPaymentRow => Row(
        children: [
          paymentCard("Pul o'tkazish", Icons.present_to_all),
          SizedBox(width: 20),
          paymentCard("Pul so'rash", Icons.download),
        ],
      );

  Widget titleText(String text) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          Text("YANA",
              style: TextStyle(
                color: Colors.teal[400],
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
        ],
      );

  Widget get footer => Container(
        height: 1000,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16).copyWith(top: 30),
          physics: NeverScrollableScrollPhysics(),
          children: [
            Text(
              "O'tkazma",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            transwerPaymentRow,
            SizedBox(height: 20),
            titleText('Saqlangan to\'lovlar'),
            SizedBox(height: 20),
            listOfProviders(subtitle: "text", hasImage: true),
            SizedBox(height: 20),
            titleText('Saqlangan to\'lovlar'),
            SizedBox(height: 20),
            listOfProviders(
              subtitle: "text",
              isPaymentCard: true,
            ),
          ],
        ),
      );

  Widget listOfProviders({
    String subtitle,
    Color bgColor,
    bool isPaymentCard = false,
    bool hasImage = false,
    IconData icon,
  }) =>
      Container(
        height: 110,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemBuilder: (context, index) => Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: isPaymentCard ? Colors.grey[850] : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                hasImage
                    ? Image.network(cardImages.first, width: 70, height: 70)
                    : Icon(icon, color: Colors.white, size: 24),
                Text(subtitle),
              ],
            ),
          ),
        ),
      );

  Widget get body => ListView(
        children: [
          Column(
            children: [
              headText(text: "Umumiy balans", size: 16),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.visibility_off_outlined, color: Colors.white),
                  SizedBox(width: 25),
                  headText(text: "101 426", size: 30),
                  SizedBox(width: 10),
                  headText(text: "so'm", size: 12),
                ],
              ),
              SizedBox(height: 10),
              headText(text: "Avgustfagi chiqim - 760 500 so'm", size: 14),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleItems(
                    text: "Kartalarim",
                    icon: Icons.payment,
                  ),
                  SizedBox(width: 16),
                  circleItems(
                    text: "Payme Go",
                    icon: Icons.gps_off,
                  ),
                  SizedBox(width: 16),
                  circleItems(
                    text: "QR to'lov",
                    icon: Icons.qr_code,
                  ),
                ],
              ),
              SizedBox(height: 20),
              footer
            ],
          ),
        ],
      );

  Widget get view => Stack(
        children: [
          backgroundImage,
          body,
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view,
    );
  }
}
