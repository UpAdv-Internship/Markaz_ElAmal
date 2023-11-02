import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';

import '../../../core/utils/app_assets.dart';
import '../common/container_reuse.dart';

class CategoryScreen extends StatelessWidget{
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,size: 34,))
        ],
        title: const Text(AppStrings.category,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
        backgroundColor: const Color(0xff336EA6),
      ),
      body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(9.0),
            childAspectRatio: 0.8,
            mainAxisSpacing: 10.0.h,
            crossAxisSpacing: 10.0.w,
            children: [

                      // Speech Category

                      ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Speech',
                          distanceBetweenImageAndText: 15.h,
                        ),

              // Autism

              ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Autism',
                          distanceBetweenImageAndText: 15.h,
                        ),
              // learn diff
              ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Learning difficulties',
                          distanceBetweenImageAndText: 15.h,
                        ),
              // intTest
              ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Intelligence test',
                          distanceBetweenImageAndText: 15.h,
                        ),
              // behavior
              ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Behavior modification',
                          distanceBetweenImageAndText: 15.h,
                        ),
              // skills Dev
              ContainerReuse(
                          onTap: (){
                            //navigate(context: context, route: Routes.??);
                          },
                          imageOfDis: Image.asset(AppAssets.speech),
                          desc: 'Skills development',
                          distanceBetweenImageAndText: 15.h,
                        ),

  ],
          ),
        ),

    );
  }

}