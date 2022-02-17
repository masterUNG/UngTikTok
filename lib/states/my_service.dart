// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:ungtiktok/states/list_group_video.dart';
import 'package:ungtiktok/widgets/add_video.dart';
import 'package:ungtiktok/widgets/home.dart';
import 'package:ungtiktok/widgets/message.dart';
import 'package:ungtiktok/widgets/profile.dart';
import 'package:ungtiktok/widgets/search.dart';

class MyService extends StatefulWidget {
  const MyService({Key? key}) : super(key: key);

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  var bottonNavigationBarItems = <BottomNavigationBarItem>[];
  var widgets = <Widget>[
    const Home(),
    const Search(),
    const AddVideo(),
    const Message(),
    const Profile(),
  ];

  int indexWidgets = 0;

  @override
  void initState() {
    super.initState();
    initialButtonNavigationBar();
  }

  void initialButtonNavigationBar() {
    var titles = <String>[
      'Home',
      'Search',
      '',
      'Message',
      'Profile',
    ];
    var iconDatas = <IconData>[
      Icons.home,
      Icons.search,
      Icons.android,
      Icons.message,
      Icons.person,
    ];

    for (var i = 0; i < titles.length; i++) {
      bottonNavigationBarItems.add(
        BottomNavigationBarItem(
          label: titles[i],
          icon: Icon(
            iconDatas[i],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexWidgets,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: bottonNavigationBarItems,
        onTap: (int index) {
          setState(() {
            indexWidgets = index;
          });
        },
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          print('Hori Drag Update ===>  dx = ${details.delta.dx}');
          if (details.delta.dx > 0.3) {
             if (indexWidgets == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListGroupVideo(),
                  ));
            }
          } else {
            print('indexWidgets ==> $indexWidgets');
           
          }
        },
      
        child: widgets[indexWidgets],
      ),
    );
  }
}
