import 'package:flutter/material.dart';
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
      body:  SingleChildScrollView(
        child: Center(
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
                        desc: AppStrings.speech.tr(context),
                        distanceBetweenImageAndText: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Autism Category

                    InkWell(
                      onTap: (){
                      //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.aut),
                        desc: AppStrings.autism.tr(context),
                        distanceBetweenImageAndText: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                        desc: AppStrings.learningDifficulties.tr(context),
                        distanceBetweenImageAndText: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Intelligence Test

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.intTest),
                        desc: AppStrings.intelligenceTest.tr(context),
                        distanceBetweenImageAndText: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                        desc: AppStrings.behaviorModification.tr(context),
                        distanceBetweenImageAndText: 1,

                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Skills development

                    InkWell(
                      onTap: (){
                        //navigate(context: context, route: Routes.??())
                      },
                      child: ContainerReuse(
                        imageOfDis: Image.asset(AppAssets.skillsDevelop),
                        desc: AppStrings.skillsDevelopment.tr(context),
                        distanceBetweenImageAndText: 1,

                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}