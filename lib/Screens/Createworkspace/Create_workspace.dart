import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pettle/const/images.dart';
import 'package:pettle/widget/customAppBar.dart';

import '../../const/colors.dart';
import '../../widget/buttonWidget.dart';
import '../bookingScreen/bookingScreen.dart';


class Create_workspace extends StatefulWidget {
  const Create_workspace({Key? key}) : super(key: key);

  @override
  State<Create_workspace> createState() => _Create_workspaceState();
}

class _Create_workspaceState extends State<Create_workspace> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: const CustomAppBar(title: "Create workspace",),
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  SizedBox(height: height*0.05,),
                  const Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Avenir'),),
                  SizedBox(height: height*0.02,),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.PrimaryColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
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
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  const Text("Number of member",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Avenir'),),
                  SizedBox(height: height*0.02,),
                  Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.PrimaryColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a Name',
                            icon: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 20,
                                    child: SvgPicture.asset(IconUserMember),
                                  ),
                                ),
                                onTap: () {})),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  const Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Avenir'),),
                  SizedBox(height: height*0.02,),
                  Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.PrimaryColor)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a Name',
                            icon: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 20,
                                    child: SvgPicture.asset(IconMail),
                                  ),
                                ),
                                onTap: () {})),
                      ),
                    ),
                  ),

              ],
            ),
                )),
            Expanded(
              flex:0,child: Container(
              margin: const EdgeInsets.only(bottom: 20),
                child: ButtonApp(color: AppColors.PrimaryColor,title: "Create",onPressed: (){
                  Get.to(()=>const BookingScreen(),transition: Transition.circularReveal);

            },),
              ),)
          ],
        ),
      ),
    );
  }
}
