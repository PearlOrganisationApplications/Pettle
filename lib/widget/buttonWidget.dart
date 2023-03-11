import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';

class ButtonApp extends StatelessWidget {
   const ButtonApp({Key? key,required this.color,required this.title, required this.onPressed}) : super(key: key);


  final String title ;
  final Color color;
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
        child: Center(child: Text(title,style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutralx))),
      ),

    );
  }
}
