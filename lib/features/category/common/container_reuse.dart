import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';

class ContainerReuse extends StatelessWidget {



  const ContainerReuse({
    Key? key,
    required this.imageOfDis,
    required this.desc,
    required this.distanceBetweenImageAndText,
  }): super (key: key);

  final Image? imageOfDis;
  final String desc;
  final double distanceBetweenImageAndText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primary,
      ),

        child: Column(
          children: [
             SizedBox(
              height: 7.h,
            ),
            SizedBox(
              height: 111,
              width: 166,
              child: imageOfDis,
            ),
             SizedBox(
              height: distanceBetweenImageAndText,
            ),

                Expanded(
                  flex: 5,
                  child: Text(desc,style:  const TextStyle(
                  color: Colors.white,
                  fontSize: 20 ,
                  fontWeight: FontWeight.w600,
              ),
              ),
                ),


            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
              ],
            ),
             SizedBox(
              height: 10.h,
            ),
          ],
        ),


    );
  }
}