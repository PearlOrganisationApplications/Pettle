import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../const/colors.dart';
import '../../widget/customAppBar.dart';

class Blogdetailed extends StatefulWidget {
  const Blogdetailed({Key? key}) : super(key: key);

  @override
  State<Blogdetailed> createState() => _BlogdetailedState();
}

class _BlogdetailedState extends State<Blogdetailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   FloatingActionButton.extended(
        onPressed: () {  },
        icon: Lottie.asset('assets/image/iconwhatsapp.json',
                 width: 30, height: 30),
        label: const Text('Share',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Avenir',
            color:  Colors.white)),

        // child: Row(
        //   children: [
        //     Lottie.asset('assets/image/iconwhatsapp.json',
        //         width: 30, height: 30),
        //     Text("Share")
        //   ],
        // ),
      ),
      appBar: const CustomAppBar(
        title: "Blog",

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 32),
              child: Text("Four Things Every Pet\nParent Needs To Know",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Avenir',
                  color: AppColors.Neutral)),
            ),
           const SizedBox(height: 16,),
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                    ),
                child:  Image.network("https://media.istockphoto.com/id/1304232922/photo/young-woman-with-a-joyful-dog-outdoors.jpg?b=1&s=170667a&w=0&k=20&c=2D_-43e_Z4CUVcHtEI2xqyPKObIHVpgA6AAWaerWSgI=",fit: BoxFit.cover,)
              ),
               const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Column(
                   children: const [
                     Text("A pet’s wellness is parents responsibility",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Avenir',
                      color: AppColors.Neutral)),
                     SizedBox(height: 16,),
                     Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
                        , style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'Avenir',
                         color: AppColors.Neutrala)
                     )
                   ],
               ),
                ),


            
          ],
        ),
      ),
    );
  }
}
