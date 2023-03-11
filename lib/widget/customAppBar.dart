import 'package:flutter/material.dart';
import 'package:pettle/const/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, this.title = '', this.leading, this.titleWidget})
      : super(key: key);

  final String title;
  final Widget? leading;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 1.2),
        child: Stack(
          children: [
            Positioned.fill(
                child: titleWidget == null
                    ? Center(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.Neutral),
                        ),
                      )
                    : Center(
                        child: titleWidget!,
                      )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ??Transform.translate(offset: Offset(-14,0),
                child:  BackButton( ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size(double.infinity, 80);


}
