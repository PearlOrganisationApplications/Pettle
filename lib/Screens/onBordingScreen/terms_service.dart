import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../const/colors.dart';
import '../../widget/bottonWidgetSecend.dart';
import '../../widget/buttonWidget.dart';
import '../../widget/customAppBar.dart';
import '../loginandSinupScreen/signUPScreen.dart';
import 'onBordingmain.dart';

class Terms_service extends StatefulWidget {
    Terms_service({Key? key}) : super(key: key);

  @override
  State<Terms_service> createState() => _Terms_serviceState();
}

class _Terms_serviceState extends State<Terms_service> {
  var size,height,width;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Terms of service",
        leading: IconButton(
          onPressed: (){
          Get.back();
          },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.Neutral,))),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children:  [
              Text("To continue, please accept our terms \nof service",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Avenir',color: AppColors.Neutral),textAlign: TextAlign.center,)
              ,SizedBox(height: height*0.05,)
              ,Text("If you’re under the age required to manage your own Google Account, you must have your parent or legal guardian’s permission to use a Google Account. Please have your parent or legal guardian read these terms with you.If \nyou’re a parent or legal guardian, and you allow your child to use the services, then these terms apply to you and you’re responsible for your child’s activity on the services.  Some Google services have additional age requirements as described in their service-specific additional terms and policies.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: 'Avenir',color: AppColors.Neutrala),textAlign: TextAlign.center,)
              ,SizedBox(height: height*0.05,) ,Row(
                children: [
                  Checkbox(value: isChecked,
                      activeColor: AppColors.Neutral,
                      tristate: true,
                      onChanged: (newBool){
                    setState(() {
                      isChecked= newBool!;
                    });
                  }),
                  Text("I agree with all terms of service",style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutral,fontSize: 14,fontWeight: FontWeight.w500),)


                ],
              )
            ,Spacer(),
              ButtonSecond(color: AppColors.PrimaryColor, title: 'Agree', onPressed: () {
                Get.to(()=>SignUP_Screen(),transition: Transition.circularReveal);

              }, icon: Icon(Icons.arrow_forward_outlined,color: AppColors.Neutralx,),)
            ],
          ),
        ),
      ) ,


    ) ;
  }
}
