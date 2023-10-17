import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: _loginstatefulState(),
  ));
}
class _loginstatefulState extends StatefulWidget {
  const _loginstatefulState({super.key});

  @override
  State<_loginstatefulState> createState() => __loginstatefulStateState();
}

class __loginstatefulStateState extends State<_loginstatefulState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (uname) {
                if(uname!.isEmpty || !uname!.contains("@") || !uname!.contains(".com") )
                {
                  return "Invalid username";
                }
                else{
                  return null;
                }
                
              },
              decoration: InputDecoration(
          
                border: OutlineInputBorder(),
                hintText: "UserName",
                labelText: "UserName",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: " PassWord",
                labelText: "PassWord",
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child:Text("Login") )
        ],
      ),
    );
  }
}