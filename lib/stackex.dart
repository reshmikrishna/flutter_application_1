import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackEx()));
}
  class StackEx extends StatelessWidget{
 @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: const Text("Stack Ex"),),
  );
 }
  }