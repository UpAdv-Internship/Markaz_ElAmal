import 'package:flutter/material.dart';
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
      height: 216,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primary,
      ),

      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 111,
              width: 166,
              child: imageOfDis,
            ),
             SizedBox(
              height: distanceBetweenImageAndText,
            ),

                Align(
                  alignment: Alignment.center,
                  child: Text(desc,style: const TextStyle(
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
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),

    );
  }
}