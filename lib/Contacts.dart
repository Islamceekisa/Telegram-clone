import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  String imageUrl =
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg';

  List<String> names = [
    "ab",
    "abv",
    "abdbfd",
    "asdafasdf",
    "afwergfwer",
    "bsdfbdfsa",
    "asdfgdsf",
    "adfgs",
    "awerew",
    "atewg",
    "adsfrwqe",
  ];

  List<String> imageUrls = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
    "https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://i.pinimg.com/originals/83/64/66/83646654668bf9ae412f45bb2e417ddf.jpg",
    "https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__340.jpg",
    "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
    "https://www.filmibeat.com/ph-big/2020/02/v-2020_158253142110.jpg",
    "https://www.whatsappimages.in/wp-content/uploads/2021/01/Boys-Feeling-Very-Sad-Images-Pics-Downlaod.jpg",
    "https://www.nature.com/immersive/d41586-021-00095-y/assets/3TP4N718ac/2021-01-xx_jan-iom_tree-of-life_sh-1080x1440.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey[900],
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Image.network(imageUrl),
                background: Container(
                  color: Colors.grey[900],
                ),
              ),
            ),
          ];
        },
        body: ListView.separated(
          separatorBuilder: (_, __) => Divider(
            height: 10,
            thickness: 1,
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                imageUrl = imageUrls[index];
                setState(() {});
              },
              leading: Icon(Icons.read_more),
              title: Text(names[index]),
            );
          },
        ),
      ),
    );
  }
}
