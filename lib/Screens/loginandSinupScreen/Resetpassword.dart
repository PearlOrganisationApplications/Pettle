import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pettle/Screens/loginandSinupScreen/signInScreen.dart';

import '../../const/colors.dart';
import '../../widget/buttonWidget.dart';
import '../../widget/customAppBar.dart';
import 'enterOTP.dart';

class Reset_password extends StatefulWidget {
  const Reset_password({Key? key}) : super(key: key);

  @override
  State<Reset_password> createState() => _Reset_passwordState();
}

class _Reset_passwordState extends State<Reset_password> {
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

              Center(child: SvgPicture.asset("assets/image/bginrest.svg")),
              SizedBox(
                height: height*0.05,
              ),
              const Text("Reset new password",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: AppColors.Neutral,fontFamily: 'Avenir'),),
              SizedBox(
                height: height*0.08,
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '*********',
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
              SizedBox(
                height: height*0.01,
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '*********',
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


              SizedBox(height: height*0.05,),
              ButtonApp(color: AppColors.PrimaryColor,title: "Save changes",onPressed: (){
                Get.to(()=>SignINScreen(),transition: Transition.circularReveal);

              },)
            ],

          ),
        ),
      ),
    );
  }
}
