import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/assignment%20flutter/gpay.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreenn(),
  ));
}

class IntroScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
PageDecoration decorationPage = const PageDecoration(
  
     titleTextStyle: TextStyle(
        fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black,),
      
     bodyTextStyle: TextStyle(
  fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown,),

  boxDecoration: BoxDecoration(
  gradient: LinearGradient(colors: [
    Colors.white,Colors.yellow,Colors.orangeAccent,
 ],
  begin: Alignment.bottomLeft,
   end: Alignment.topRight,),),
   imageFlex: 1



    );




    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'First Page',
            body: "Intoduction package for flutter app",
            image: IntroImage(
                "https://tse3.mm.bing.net/th?id=OIP.G3_UQplyIOBRuxArFMorOwHaLG&pid=Api&P=0&h=180")),
        PageViewModel(
            title: 'Second Page',
            body: "Intoduction package for dart app",
            image: IntroImage(
                "https://tse4.mm.bing.net/th?id=OIP.7Oa7K6jXIGOuqit8_3eBOwHaLH&pid=Api&P=0&h=180")),
        PageViewModel(
            title: 'Third Page',
            body: "Intoduction package for flutter & dart app",
            image: IntroImage(
                "https://tse1.mm.bing.net/th?id=OIP.kFhtXK6D0I0gjtXqa2-KmQAAAA&pid=Api&P=0&h=180"))
    ],

     onSkip: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => SplashPage()),
      ),
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => SplashPage()),
      ),
      showSkipButton: true,
      skip: const Text('Skip'),
      //
      next: const Icon(Icons.arrow_forward_rounded),
      done: const Text("Done"),
      dotsDecorator: const DotsDecorator(
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          size: Size(12, 10),
          activeSize: Size(22, 10),
          activeColor: Colors.green),
    );
  }

  Widget IntroImage(String imgpath) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imgpath)))));
  }
}
