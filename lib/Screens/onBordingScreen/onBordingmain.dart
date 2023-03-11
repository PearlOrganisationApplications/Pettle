import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pettle/Screens/onBordingScreen/terms_service.dart';

import '../../const/colors.dart';
import '../../const/images.dart';
import '../../widget/buttonWidget.dart';
import 'onBordingScreen.dart';

class Onbordingmain extends StatefulWidget {
  const Onbordingmain({Key? key}) : super(key: key);

  @override
  State<Onbordingmain> createState() => _OnbordingmainState();
}

class _OnbordingmainState extends State<Onbordingmain> {
  late PageController _pageController;
  int _pageIndex =0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController= PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (index){
                     setState(() {
                       _pageIndex= index;
                     });
                      print(_pageIndex);
                    },

                    itemBuilder: (context,index)=>OnBordingScreen(image: demo_data[index].image,
                  title: demo_data[index].title,
                  descrcipion: demo_data[index].description,) ),
              ),

              _pageIndex == 2 ?Container(
                child: Column(
                  children: [
                    ButtonApp(color: AppColors.PrimaryColor, title: 'Get Started', onPressed: () {
                      Get.to(()=>Terms_service(),transition: Transition.zoom);

                    },),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(fontFamily: 'Avenir',color: AppColors.Neutrala,fontSize: 16,fontWeight: FontWeight.w500),),
                       TextButton(onPressed: (){}, child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w400
                       ,fontSize: 16,fontFamily: 'Avenir',color: AppColors.Ascent
                       ),))
                      ],
                    )
                  ],
                ),
              ):  Row(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage( curve: Curves.ease,duration: const Duration(milliseconds: 300));
                        },
                        child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: AppColors.PrimaryColor, // <-- Button color
                          foregroundColor: AppColors.Neutrala, // <-- Splash color
                        ),
                      ),
                      SizedBox(width: width*0.05,),
                      const Text("Skip",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Avenir',color: AppColors.Neutrala),)
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                     ...List.generate(demo_data.length, (index) =>  DotIndicator(isActive: index==_pageIndex, ))


                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key,
    this.isActive=false
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive?17:12,
      height: 12,
      decoration: BoxDecoration(
          color:isActive? AppColors.PrimaryColor:AppColors.Neutrala,
          borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}
class Onboard{
  final String image,title,description;
  Onboard({required this.image, required this.title, required this.description,});
}
final List<Onboard>demo_data= [
  Onboard(image: onBording, title: "Lorem Ipsum is simply\n dummy text?", description: "Easily arrange work order for you to\n mange. Many functions to choose.")
  ,Onboard(image: onBording, title: "Lorem Ipsum is simply\n dummy text?", description: "Easily arrange work order for you to\n mange. Many functions to choose.",
  ),Onboard(image: onBording, title: "Lorem Ipsum is simply\n dummy text?", description: "Easily arrange work order for you to\n mange. Many functions to choose.",

  )
];

