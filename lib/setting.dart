import 'package:apps/profile.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int _selectedIndex;

  List<String> names = [
    "Saved Message",
    "Recent Calls",
    "Devices",
    "Chat Folders",
    "Notifications and Sounds",
    "Privacy and Security",
    // "Data and Storage",
    // "Appearance",
    // "Language",
    // "stickers",
  ];
  List<String> names1 = [
    // "Saved Message",
    // "Recent Calls",
    // "Devices",
    // "Chat Folders",
    "Notifications and Sounds",
    "Privacy and Security",
    "Data and Storage",
    "Appearance",
    "Language",
    "stickers",
  ];
  List<String> names2 = [
    "Ask a Question",
    "Telegram FAQ",
    "Telegram Features",
  ];

  List<String> images = [
    "assets/images/saved message.jpg",
    "assets/images/recend.png",
    "assets/images/devices.png",
    "assets/images/folder.png",
  ];

  List<String> images1 = [
    "assets/images/notifications.png",
    "assets/images/Privacy and Security.png",
    "assets/images/Data and Storage.png",
    "assets/images/folder.png",
    "assets/images/Language.png",
    "assets/images/stickers.png",
  ];
  List<String> images2 = [
    "assets/images/Ask a Question.png",
    "assets/images/Telegram FAQ.png",
    "assets/images/Telegram Features.png",
  ];

  Widget trailing(index) {
    if (index == 4)
      return Text("English",
          style: TextStyle(
              color: index == _selectedIndex ? Colors.red : Colors.white));
    else if (index == 5)
      return Container(
        width: 30,
        height: 20,
        decoration: BoxDecoration(
          color: index == _selectedIndex ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text("15")),
      );
    else
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                color: Colors.grey[900],
              ),
              Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: CircleAvatar(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "+998 97 746 66 33",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "@ismaceekisa",
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 50),
                child: Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) => Container(
                color: Colors.grey[900],
                child: ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[300],
                  ),
                  title: Text(
                    names[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Image.asset(
                    images[index],
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 50),
                child: Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: images1.length,
              itemBuilder: (context, index) => Container(
                color: Colors.grey[900],
                child: ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: index == _selectedIndex ? Colors.red : Colors.white,
                  ),
                  title: Row(
                    children: [
                      Text(
                        names1[index],
                        style: TextStyle(
                            color: index == _selectedIndex
                                ? Colors.red
                                : Colors.white),
                      ),
                      Spacer(),
                      trailing(index),
                    ],
                  ),
                  leading: Image.asset(
                    images1[index],
                    width: 20,
                    height: 20,
                  ),
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == index) {
                        _selectedIndex = -1;
                      } else {
                        _selectedIndex = index;
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 50),
                child: Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: images2.length,
              itemBuilder: (context, index) => Container(
                color: Colors.grey[900],
                child: ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[300],
                  ),
                  title: Text(
                    names2[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Image.asset(
                    images2[index],
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
