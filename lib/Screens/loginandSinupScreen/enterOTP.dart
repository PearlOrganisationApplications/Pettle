import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pettle/Screens/loginandSinupScreen/signInScreen.dart';
import 'package:pettle/const/colors.dart';
import 'package:pettle/widget/customAppBar.dart';

import '../../widget/bottonWidgetSecend.dart';
import '../../widget/buttonWidget.dart';
import '../../widget/otpWidget.dart';
import 'Resetpassword.dart';


class EnterOTP extends StatefulWidget {

  const EnterOTP({Key? key}) : super(key: key);

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  var size, height, width;
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(child: Image.asset("assets/image/pethouse.png")),
              SizedBox(
                height: height*0.05,
              ),
              const Text("Yash Pet Care",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: AppColors.Neutral,fontFamily: 'Avenir'),),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true), // auto focus
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false)
                ],
              ),
              SizedBox(height: height*0.05,),
              ButtonSecond(icon: Icon(Icons.arrow_forward_outlined,color: Colors.white,), color: AppColors.PrimaryColor, title: 'Get In', onPressed: () {
                Get.to(()=>Reset_password(),transition: Transition.zoom);
              },)
              // ButtonApp(color: AppColors.PrimaryColor,title: "Send OTP",onPressed: (){
              // Get.to(()=>Reset_password(),transition: Transition.zoom);

              // },)
            ],

          ),
        ),
      ),
    );
  }
}
