import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images screen"),
        ),
      body: ListView(
        children: [
          Image(image: AssetImage("assets/images/love love.jpg")
          ), Image(image: AssetImage("assets/images/love love.jpg")
          ),
          //Network image is used to get an image from the net
          Image(image: NetworkImage("https://cdn-images.farfetch-contents.com/15/80/08/01/15800801_28937320_1000.jpg")),
          Image(image: NetworkImage("https://media.istockphoto.com/id/1310088127/photo/mojito-in-a-glass-with-mint-on-dark-background.jpg?s=612x612&w=is&k=20&c=3lJgEwNGJeSe00bEHBtb3aYO71V56HNlD1v47rSO_mM=")),
          Image(image:NetworkImage("https://hips.hearstapps.com/hmg-prod/images/cushioned-shoes-15406-1632754154.jpg?crop=0.893xw:1.00xh;0.0561xw,0&resize=768:*")),
        ],
      ),
         );
  }
}

