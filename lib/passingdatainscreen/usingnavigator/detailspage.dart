import 'package:flutter/material.dart';
import 'package:flutter_application_1/passingdatainscreen/dummydata.dart';

class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var id= ModalRoute.of(context)?.settings.arguments;
    var product= products.firstWhere((product) => product[id]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(product['image'],hei)
          ],

        ),
      ),
    )

  }
}