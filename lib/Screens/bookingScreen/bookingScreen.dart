import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

import 'package:pettle/const/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/buttonWidget.dart';
import '../../widget/customAppBar.dart';
import '../blogHome/bloghome.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  bool isChecked = false;
  bool isCheckedout = false;
  late final TabBar _tabBar;
  // List<String> tabs = ["Tasks", "Records", "🆘 Emergency Contacts "];
  // int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Booking",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                        width: 96.0,
                        height: 96.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image:  DecorationImage(
                                fit: BoxFit.fill,
                                image:   NetworkImage(
                                    "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")))),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Monk & Sagar",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.Neutral,
                              fontFamily: 'Avenir'),
                        ),
                        Row(
                          children: [
                            Lottie.asset('assets/image/iconwhatsapp.json',
                                width: 30, height: 30),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/image/phone.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/image/mail.svg")
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            ButtonApp(
                              color: AppColors.PrimaryColor,
                              title: 'Regular',
                              onPressed: () {
                                Get.to(()=>const BlogHome(),transition: Transition.circularReveal);
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ButtonApp(
                              color: AppColors.PrimaryColor,
                              title: 'Short stay',
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 172,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                     BoxShadow(color: Colors.white, spreadRadius: 3),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 28.0,
                                    height: 28.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image:   DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Buddy Name",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.Neutral,
                                        fontFamily: 'Avenir')),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("assets/image/pethomea.png"),
                                const Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.Neutral,
                                      fontFamily: 'Avenir'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/image/calendar.svg"),
                          const Text("01/02/2023",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.Neutral,
                                  fontFamily: 'Avenir')),
                          SvgPicture.asset("assets/image/arrow.svg"),
                          SvgPicture.asset("assets/image/calendar.svg"),
                          const Text("01/02/2023",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.Neutral,
                                  fontFamily: 'Avenir')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "50%",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.Neutral,
                                fontFamily: 'Avenir'),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            width: 167,
                            height: 8,
                            child: const ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.PrimaryColor),
                                backgroundColor: Color(0xffD6D6D6),
                              ),
                            ),
                          ),
                          const Text(
                            "13/28 tasks",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.Neutral,
                                fontFamily: 'Avenir'),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  activeColor: AppColors.Neutral,
                                  tristate: true,
                                  onChanged: (newBool) {
                                    setState(() {
                                      isChecked = newBool!;
                                    });
                                  }),
                              const Text(
                                "Check - In",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.Neutral,
                                    fontFamily: 'Avenir'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: isCheckedout,
                                  activeColor: AppColors.Neutral,
                                  tristate: true,
                                  onChanged: (newBool) {
                                    setState(() {
                                      isCheckedout = newBool!;
                                    });
                                  }),
                              const Text(
                                "Check - Out",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.Neutral,
                                    fontFamily: 'Avenir'),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.amberAccent,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(

                    body: TabBar(

                      indicatorColor: AppColors.Neutrala,
                      unselectedLabelColor: AppColors.Neutrala,
                      labelColor:  AppColors.Neutral,
                      indicatorWeight: 2,
                      indicator: BoxDecoration(

                          color: AppColors.PrimaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      tabs:  const [
                        Tab(
                          text: "Tasks",
                        ),
                        Tab(
                          text: "Records",
                        ),
                        Tab(
                          text: "🆘 Emergency Contacts ",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 300,
              //   child: TabBarView(
              //     children: [
              //
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
