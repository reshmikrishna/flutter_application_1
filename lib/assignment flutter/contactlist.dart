import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView1()));
}

class  ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleContactList",),
        ),
      body:ListView(
        children:[
          Card(child:
          ListTile(
            title: Text('John Judah',style: TextStyle(fontSize:15 )),
            leading: Icon(Icons.account_circle,
              color: Colors.blue,
              size: 40,),
            subtitle: Text('234803198043',style: TextStyle(fontSize:12 )),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
          )),

          Card(child:
          ListTile(
            title: Text('Bisola Akanbi',style: TextStyle(fontSize:15 )),
            leading: Icon(Icons.account_circle,
              color: Colors.purpleAccent,
              size: 40,),
            subtitle:Text('6473852926',style: TextStyle(fontSize:12 )),
            trailing:Icon(Icons.arrow_forward_ios),
          )),

          Card(child:
          ListTile(
            title :Text('Eknosa Iku',style: TextStyle(fontSize:15 )),
            leading: Icon(Icons.account_circle_rounded,
              color: Colors.orange,
              size: 40,),
            subtitle: Text('468308473837',style: TextStyle(fontSize:12 )),
            trailing: Icon(Icons.arrow_forward_ios),
          )),

          Card(child:
          ListTile(
            title: Text('Andrew Nedubuisi',style: TextStyle(fontSize:15 )),
            leading: Icon(Icons.account_circle_rounded,
              color: Colors.blue,
              size: 40,),
            subtitle: Text('7594749378675',style: TextStyle(fontSize:12 )),
            trailing: Icon(Icons.arrow_forward_ios),
          )),

          Card(child:
          ListTile(
            title: Text('Arinze Deyo',style: TextStyle(fontSize:15 )),
            leading: Icon(Icons.account_circle_rounded,
              color: Colors.green,
              size: 40,),
            trailing: Icon(Icons.arrow_forward_ios),
            subtitle: Text("4646366364345",style: TextStyle(fontSize:12 )),
          )),

          Card(child:
          ListTile(
              title: Text('Wakara Zimbu',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color:Colors.red ,
                size: 40,),
              subtitle: Text('473779687765',style: TextStyle(fontSize:12 )),
              trailing: Icon(Icons.arrow_forward_ios),
          )),

          Card(child:
          ListTile(
              title: Text('Emaechi Chinedu',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.yellowAccent,
                size: 40,),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle: Text('288987474637',style: TextStyle(fontSize:12 )),
          )),

          Card(child:
          ListTile(
              title: Text('Osaretin iginomhhf',style: TextStyle(fontSize:15 )),
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.blueAccent,
                size: 40,),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('8877577842',style: TextStyle(fontSize:12 ),),
          )),
        ],
      )
    );
  }
}