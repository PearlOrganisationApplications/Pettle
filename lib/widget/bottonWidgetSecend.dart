import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class ButtonSecond extends StatelessWidget {
  const ButtonSecond({Key? key,required this.color,required this.title, required this.onPressed, required this.icon}) : super(key: key);


  final String title ;
  final Color color;
  final Icon? icon;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed:onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      color: color,textColor: color,

      child: Container(
        height: 48,
        child:icon!=null ?Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(title,style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutralx)),
              SizedBox(width: 14,),
              icon!,
            ],
          ),
        ):Center(child: Text(title,style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutralx))),

    ),

    );
  }
}
