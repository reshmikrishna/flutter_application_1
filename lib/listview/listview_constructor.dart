import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
void main(){
  runApp(MaterialApp(
  theme:ThemeData(primarySwatch: Colors.teal),
  home:ListView1(),));

}

class ListView1 extends StatelessWidget{
  const ListView1({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:Text("ListView"),
      ),
      body: ListView(
        children:[
          Card(
            child:ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('product1'),
              subtitle: Text("This is a sample subtitle"),
trailing: Text("10.11")
             ) ),
             Card(
              child: ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage ("assets/icon/myicon.png")),
                title: Text('product1'),
                subtitle:Text("hii"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('10.11'),
                    CircleAvatar(
                      minRadius: 6,
                      maxRadius: 12,
                      backgroundColor: Colors.teal,
                      child: Text('2'),
                    )
                  ],
                )
              ),
             ),
             Card(
              child: ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage ("assets/icon/myicon.png")),
                title: Text('product2'),
                subtitle:Text("person"),
                trailing: Text('10.11'),
              )
                ),
        ]
      )
      );
    
  }
}