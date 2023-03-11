import 'package:flutter/material.dart';
import 'package:pettle/const/colors.dart';

TextField reusableTextField(String text,IconData icon ,bool isPassordType,
TextEditingController controller){
  return TextField(controller: controller,
  obscureText: isPassordType,
    enableSuggestions: !isPassordType,
    autocorrect: !isPassordType,
    cursorColor: Colors.white,
    style: TextStyle(color: AppColors.Neutral,fontFamily: 'Avenir'),

    decoration:  InputDecoration(prefix: Icon(icon,color: AppColors.Neutral,),
    labelText: text,
      labelStyle: TextStyle(color: AppColors.Neutral,fontFamily: 'Avenir'),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      // fillColor: AppColors.Neutrala

    ),
    keyboardType: isPassordType?TextInputType.visiblePassword:TextInputType.emailAddress,


  );
}