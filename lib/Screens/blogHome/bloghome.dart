import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../const/colors.dart';
import '../../const/images.dart';
import '../../widget/customAppBar.dart';
import 'blogdetailed.dart';

class BlogHome extends StatefulWidget {
  const BlogHome({Key? key}) : super(key: key);

  @override
  State<BlogHome> createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Blog",
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.Neutrala)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Suggested",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Avenir',
                  color: AppColors.Neutral),
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>const Blogdetailed(),transition: Transition.circularReveal);
              },
              child: Container(
                width: double.infinity,
                height: 80,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 60,
                      height: 57,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://www.shutterstock.com/image-photo/muscular-man-showing-muscles-on-260nw-1686329977.jpg"),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Four Things Every Pet\nParent Needs To Know",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Avenir',
                          color: AppColors.Neutral),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Lottie.asset('assets/image/iconwhatsapp.json',
                        width: 30, height: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
