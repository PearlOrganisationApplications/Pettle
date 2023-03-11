import 'package:flutter/material.dart';
import 'package:pettle/const/colors.dart';

class OnBordingScreen extends StatelessWidget {
   OnBordingScreen({Key? key, required this.image, required this.title, required this.descrcipion}) : super(key: key);

  final String image,title,descrcipion;

  var size,height,width;



  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(image),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(title
                ,style: TextStyle(fontFamily: 'Avenir',fontSize: 24,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            ),
            Text(descrcipion,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.Neutral),)
          ,
          ],
        ),
      ),
    );
  }
}
