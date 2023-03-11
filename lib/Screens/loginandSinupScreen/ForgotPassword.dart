import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pettle/Screens/loginandSinupScreen/enterOTP.dart';
import 'package:pettle/const/colors.dart';

import '../../widget/buttonWidget.dart';
import '../../widget/customAppBar.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var size, height, width;
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

              Center(child: SvgPicture.asset("assets/image/forgetimage.svg")),
               SizedBox(
                height: height*0.05,
              ),
              const Text("Forgot password ?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: AppColors.Neutral,fontFamily: 'Avenir'),),
              const SizedBox(
                height: 15,
              ),
              const Text("Enter your phone number then we will send\n you OTP sms to reset new password.",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,fontFamily: 'Avenir',color: AppColors.Neutrala),
              ),
              SizedBox(height: height*0.05,),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16)
                      ,border: Border.all(color: AppColors.PrimaryColor)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      suffixIcon: const Icon(Icons.remove_red_eye) ,
                      icon: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 20,
                              child: SvgPicture.asset("assets/image/password.svg"),
                            ),
                          ),
                          onTap: () {})),
                ),
              ),
              SizedBox(height: height*0.05,),
              ButtonApp(color: AppColors.PrimaryColor,title: "Send OTP",onPressed: (){
                Get.to(()=>EnterOTP(),transition: Transition.circularReveal);

              },)
            ],

          ),
        ),
      ),
    );
  }
}
