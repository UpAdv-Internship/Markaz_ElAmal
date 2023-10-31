import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [

                    // Speech Category

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.speech),
                        desc: 'Speech',
                        distanceBetweenImageAndText: 15.h,
                      ),
                    ),
                     SizedBox(
                      width: 26.w,
                    ),

                    // Autism Category

                    InkWell(
                      onTap: (){
                      //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.aut),
                        desc: 'Autism',
                        distanceBetweenImageAndText: 15.h,
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [

                    // Learning Diff

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.learnDiff),
                        desc: 'learning\nDifficulties',
                        distanceBetweenImageAndText: 1.h,
                      ),
                    ),
                     SizedBox(
                      width: 26.w,
                    ),

                    // Intelligence Test

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.intTest),
                        desc: 'intelligence\nTest',
                        distanceBetweenImageAndText: 1.h,
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [

                    // behivor modi

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.behMod),
                        desc: 'behavior\nModification',
                        distanceBetweenImageAndText: 1.h,

                      ),
                    ),
                     SizedBox(
                      width: 26.w,
                    ),

                    // Skills development

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.skillsDevelop),
                        desc: 'skills\nDevelopment',
                        distanceBetweenImageAndText: 2.h,

                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),

    );
  }

}