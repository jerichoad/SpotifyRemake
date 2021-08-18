import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'home_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Icon(FeatherIcons.play),
        ),
      ],
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text("Search",style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Text("Profile",style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }

  Widget getFooter(){
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.book,
      /*Icons.home,
      Icons.search,
      Icons.verified_user,*/
    ];
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              icon: Icon(
                items[index],
                color: activeTab == index ? Colors.green : Colors.white,
                ),
                onPressed: (){
                  setState(() {
                    activeTab = index;
                  });
                },
            );
          })
        ),
      ),
    );
  }
}