// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'color.dart';
//hello

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String a = "assets/images/Fadil.jpg";
    String b = "assets/images/Home.jpg";
    String c = "assets/images/Nihal pandi.jpg";
    String d = "assets/images/Abhi.jpg";
    String e = "assets/images/Kotha.jpg";
    String f = "assets/images/Sarga.jpg";
    String g = "assets/images/Umma.jpg";
    String h = "assets/images/Dhaniyel.jpg";
    String i = "assets/images/Maman.jpg";
    String j = "assets/images/Roomeez.jpg";
    String k = "assets/images/Job.jpg";
    String l = "assets/images/Faizka.jpg";
    List<Chat> chatList = [
      Chat(
          name: 'Me (You)',
          time: '10:47 pm',
          lstmsg: " fadilameen63@gmail.com",
          img: a,
          readstatus: true,
          unread: false),
      Chat(
          name: '🏡Home',
          time: '7:09 pm',
          lstmsg: "Faizkka: sceene 😂",
          img: b,
          readstatus: false,
          unread: true),
      Chat(
          name: 'Nihal Pandi',
          time: '8:57 am',
          lstmsg: "Whatsapp_clone.txt",
          img: c,
          readstatus: true,
          unread: false),
      Chat(
          name: 'Abhinand Mt',
          time: '8:50 pm',
          lstmsg: "hi",
          img: d,
          readstatus: true,
          unread: true),
      Chat(
          name: '⚔കൊത്ത ⚔',
          time: '08:34 am',
          lstmsg: "Thameem:Opened",
          img: e,
          readstatus: false,
          unread: false),
      Chat(
          name: 'Sarga-40',
          time: '4:28 pm',
          lstmsg: "hey",
          img: f,
          readstatus: true,
          unread: true),
      Chat(
          name: 'Umma',
          time: '5:28 pm',
          lstmsg: "Photo",
          img: g,
          readstatus: true,
          unread: false),
      Chat(
          name: 'Dhaniyel',
          time: '10:00 pm',
          lstmsg: "👍🏻",
          img: h,
          readstatus: false,
          unread: false),
      Chat(
          name: 'Maman K',
          time: '9:15 pm',
          lstmsg: "Photo",
          img: i,
          readstatus: true,
          unread: false),
      Chat(
          name: 'Roomeezzz',
          time: '5:54 pm',
          lstmsg: "Ameen: Video",
          img: j,
          readstatus: true,
          unread: true),
      Chat(
          name: 'Job Cell - MAMOC UAE',
          time: '12:10 am',
          lstmsg: "hi all",
          img: k,
          readstatus: false,
          unread: false),
      Chat(
          name: 'Faizkka Saudi',
          time: '04:28 pm',
          lstmsg: "Aahh",
          img: l,
          readstatus: false,
          unread: true),
    ];
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: c1,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            color: c1,
            onPressed: () {},
            icon: Icon(
              Icons.qr_code_scanner_rounded,
            ),
          ),
          IconButton(
            color: c1,
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            color: c1,
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: cs1),
              height: 48,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: -5),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: cs2, fontSize: 15),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 7),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 30,
                  decoration: BoxDecoration(
                    color: cdarkgreen,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(color: clightgreen, fontSize: 11),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 25,
                  width: 55,
                  decoration: BoxDecoration(
                    color: cs1,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Unread",
                      style: TextStyle(color: cs2, fontSize: 11),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 25,
                  width: 55,
                  decoration: BoxDecoration(
                    color: cs1,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Groups",
                      style: TextStyle(color: cs2, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              // padding: EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  minVerticalPadding: 15,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chatList[index].img),
                  ),
                  title: Text(
                    chatList[index].name,
                    style: TextStyle(color: c1),
                  ),
                  subtitle: Row(
                    children: [
                      chatList[index].readstatus
                          ? Icon(
                              Icons.done_all_rounded,
                              color: cseen,
                              size: 19,
                            )
                          : Icon(
                              Icons.done_all_rounded,
                              color: csub,
                              size: 19,
                            ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        chatList[index].lstmsg,
                        style: TextStyle(color: csub),
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chatList[index].time,
                        style: TextStyle(color: csub),
                      ),
                      chatList[index].unread
                          ? CircleAvatar(
                              radius: 10,
                              backgroundColor: cunread,
                              child: Text(
                                "1",
                                style: TextStyle(color: cblack, fontSize: 9),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: bgcolor,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Image(
                    image: AssetImage("assets/images/chats.png"),
                    width: 27,
                    height: 27,
                  ),
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                    color: c1,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage("assets/images/updates.png"),
                  height: 27,
                  width: 27,
                ),
                Text(
                  "Updates",
                  style: TextStyle(
                    color: c1,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage("assets/images/communities.png"),
                  height: 27,
                  width: 27,
                ),
                Text(
                  "Communities",
                  style: TextStyle(
                    color: c1,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.call_outlined, color: c1),
                Text(
                  "Calls",
                  style: TextStyle(
                    color: c1,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Chat {
  late String name, time, lstmsg, img;
  late bool readstatus;
  bool unread;

  Chat(
      {required this.name,
      required this.time,
      required this.lstmsg,
      required this.img,
      required this.readstatus,
      required this.unread});
}
