import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_Ui(),
  ));
}

class List_Ui extends StatelessWidget {
  var placeName = ["Delhi", "Finland", "London", "Vancouver", "New York"];
  var countryName = ["India", "Europe", "UK", "Canada", ""];
  var category = [
    "population:32.9M",
    "population:5.54M",
    "population:8.8M",
    "population:2.6M",
    ""
  ];
  var photos = [
    "assets/icon/myicon.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("Cities around the world")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              5,                                                   
              (index) => Padding(
                    //Padding is set to separate each containers
                    padding: const EdgeInsets.all(8.0),
                    // Orange box container with specific height width and curved corner
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      height: 150,
                      width: double.infinity,
                      //Stack is created inside the orange container box
                      child: Stack(
                        children: [
                          Padding(
                            // Here a padding of 8 is set only on the left side of the image
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(
                              photos[index],
                              fit: BoxFit.cover,
                              width: 225,
                              // Height is set to infinity to cover
                              // the total height of the orange container
                              height: double.infinity,
                            ),
                          ),
                          // Positioned is used to align the text inside the container
                          Positioned(
                            left: 250,
                            top: 30,
                            child: Text(
                              placeName[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                              left: 255,
                              top: 90,
                              child: Text(
                                countryName[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                              left: 255,
                              top: 110,
                              child: Text(
                                category[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}