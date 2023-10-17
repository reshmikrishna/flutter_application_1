import 'package:flutter/material.dart';
import 'package:flutter_application_1/mediaquary/mobilescreen.dart';
import 'Bigscreen.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState()=> _HomepageState();
}
class _HomepageState extends State<HomePage>{
  Widget build(BuildContext context){
    var devicewidth=MediaQuery.of(context).size.width;
    if(devicewidth<600){
      return MobileScreen();

    }else{
      return BigScreen();
      
  
    }
  }
}

    
  
