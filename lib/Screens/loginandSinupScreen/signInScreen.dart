import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pettle/Screens/loginandSinupScreen/signUPScreen.dart';

import '../../const/colors.dart';
import '../../const/images.dart';
import '../../widget/buttonWidget.dart';
import '../../widget/customAppBar.dart';
import '../Createworkspace/Create_workspace.dart';
import 'ForgotPassword.dart';


class SignINScreen extends StatefulWidget {
  const SignINScreen({Key? key}) : super(key: key);

  @override
  State<SignINScreen> createState() => _SignINScreenState();
}

class _SignINScreenState extends State<SignINScreen> {

var size, height, width;
TextEditingController _emailTextController = TextEditingController();
TextEditingController _passwordTextController = TextEditingController();
TextEditingController _confpasswordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24,top: 42,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                fontFamily: 'Avenir',
                                color: AppColors.Neutral),
                          ),
                          SvgPicture.asset(
                            UpImage,
                            height: 40.0,
                            width: 40.0,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                      SizedBox(height: height*0.05,),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a Name',
                            icon: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 20,
                                    child: SvgPicture.asset(IconUser),
                                  ),
                                ),
                                onTap: () {})),
                      ),
                      SizedBox(height: height*0.02,),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Paswword',
                            suffixIcon: const Icon(Icons.remove_red_eye) ,
                            icon: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 20,
                                    child: SvgPicture.asset(IconPasswordLock),
                                  ),
                                ),
                                onTap: () {})),
                      ),
                      SizedBox(height: height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){
                            Get.to(()=>const ForgotPassword(),transition: Transition.rightToLeft);
                          }, child: const Text("Forgot password ?",style: TextStyle(fontFamily: 'Avenir',fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.Neutral),textAlign: TextAlign.end,)),
                        ],
                      ),
                      const SizedBox(height: 24,),
                      ButtonApp(color: AppColors.PrimaryColor,title: "Sign In",onPressed: (){
                        Get.to(()=>const Create_workspace(),transition: Transition.circularReveal);

                      },),
                      const SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: Divider(
                              thickness: 1,
                              color: AppColors.Neutralb,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Or sign up with',
                            style: TextStyle(color: AppColors.Neutrala, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: AppColors.Neutralb,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height:30 ,),
                      Container(
                        height: 25,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 12,height: 22,
                              child: SvgPicture.asset(IconFacebook),
                            ),
                            SizedBox(
                              width: 12,height: 22,
                              child: SvgPicture.asset(IconGmail),
                            ),
                            SizedBox(
                              width: 12,height: 22,
                              child: SvgPicture.asset(IconInstagram),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 0,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutrala,fontSize: 16,fontWeight: FontWeight.w500),),
                TextButton(onPressed: (){
                  Get.to(()=>const SignUP_Screen(),transition: Transition.downToUp);
                }, child: const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w400
                    ,fontSize: 16,fontFamily: 'Avenir',color: AppColors.Ascent
                ),))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
