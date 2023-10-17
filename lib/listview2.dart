import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ListView2(),
  ));

}

class ListView2 extends StatelessWidget {
  var title=[
    'Data1',
    'Data2',
    'Data3',
    'Data4',
    'Data5',
    'Data6',
    'Data7',
    'Data8',
    'Data9',
    'Data10',
  ];
  var subti=[20,30,40,50,60,70,80,90,100];
  var icons=[
    Icons.abc_outlined,
    Icons.abc_rounded,
    Icons.abc_sharp,
    Icons.ac_unit_rounded,
    Icons.access_alarm_sharp,
    Icons.access_time,
    Icons.access_time_filled,
    Icons.accessibility_new,
    Icons.accessible_forward,
    Icons.ac_unit,

    
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView2"),

    ),
    body: ListView(
      children: List.generate(20, (index) => Card(
        child: ListTile(
          title: Text(title[index]),
          subtitle: Text('${subti[index]}'),
          leading: Icon(icons[index]),
          ),
        ),
      ),
      ),

    );
    
  }


}



