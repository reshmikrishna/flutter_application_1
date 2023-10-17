import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:Appbar1()
  ));
}
class Appbar1 extends StatelessWidget {
//  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
          actions:[
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15,),
            Icon(Icons.search_rounded),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child:Text('New Broadcast')),
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text("Linked Devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text('payments')),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: PreferredSize(preferredSize:Size.fromHeight(AppBar().preferredSize.height),
              child:Container(
                child: const TabBar(
                 //isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 50),
                  tabs: [
                    SizedBox(
                      child: Tab(
                        icon:FaIcon(Fontof),
                      ),
                    ),
                    Tab(
                     text: 'Chats',
                    ),
                    Tab(
                      text: 'Updates',
                    ),
                    Tab(
                      text: "Calls",
                    ),

                  ],
                ),
              ) ),
        ),
        body: TabBarView(children: [
         splashpage(),
          Reg_stateful(),
          ListView2(),
          SplashPage(),


        ],),
      ),
    );
  }
}