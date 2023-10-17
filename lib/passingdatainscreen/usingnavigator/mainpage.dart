import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/passingdatainscreen/dummydata.dart';


void main() {
  runApp(MaterialApp(
    home: ProductMain(),
  ));
}

class ProductMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: List.generate(
              products.length,
              (index)=> InkWell(
                onTap: ()=>Navigator.of(context).pushNamed('details',arguments: products[index]['id']),
                child: Card(
                  child: Column(
                  children:[
                    Container(
                      height:100 ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(products[index]['image'])
                        )

                      )
                    ),
                    Text(products[index]['name']),
                    Text('${products[index]['price']}\$'),
                    
                  ]
                ),
              )
            
        //
      ),
    )));
  }
}