import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:spotify_remake/json/arrsongs.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: getAppBar(), 
      preferredSize: Size.fromHeight(100.0)),      
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getAppBar(){
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Padding(padding: const EdgeInsets.only(left: 10, right: 10, top: 50, bottom:30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hi Jerry", 
              style: TextStyle(
                fontSize: 32, 
                color: Colors.white, 
                fontWeight: FontWeight.bold
              ),
            ),
            Icon(FeatherIcons.bell)
          ],
        ),
      ),
    );
  }

  Widget getBody(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      Row(
                        children: List.generate(song_type_1.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Column(
                              children: [
                                Text(
                                  song_type_1[index], 
                                  style: TextStyle(
                                    fontSize: 25, 
                                    color: Colors.grey, 
                                    fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),*/
              Padding(padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: Text(
                  "Jump Back in", 
                  style: TextStyle(
                    fontSize: 28, 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(songs.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(songs[index]['img']),fit: BoxFit.cover),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(height: 20,),
                              /*Text(songs[index]['title'], textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800, 
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),*/
                              Container(
                                width: 180,
                                child: Text(
                                  songs[index]['title'], 
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800, 
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'], 
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400, 
                                    color: Colors.grey,
                                    fontSize: 12
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
}