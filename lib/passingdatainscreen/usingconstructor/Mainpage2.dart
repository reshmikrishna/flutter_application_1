import 'package:flutter/material.dart';
class main(){
  runApp(MaterialApp(home:Mainpage2(),));

}
class Mainpage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()=>Navigator.of(context).push(
                MaterialPageRoute(builder: context)=>DataStateless())

            child: Text('To StateLess')),

  
               
            
          ],
        ),
      ),

    );
  }
  
}