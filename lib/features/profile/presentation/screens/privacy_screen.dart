import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateReplacment(context: context, route: Routes.profileScreen);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: Text(AppStrings.privacy.tr(context)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.privacyPreferences.tr(context),
              style: CustomTextStyle.poppins600secondary24,
            ),            
            SizedBox(
              height: 28.h,
            ),
            Text(
              '''Hi there, we don't want to keep any info that you're
not comfortable sharing. We want our users to have
100% control of their informariton 100% of the time. 
Toggle below what you'd like to share and not share
baring in mind the more you share with us the more
tailored user experience you'll receive - thanks!''',
              style: CustomTextStyle.poppins400secondary13,
            ),
            SizedBox(
              height: 43.h,
            ),
            
            Column(
              children: [
                ListTile(
                  title: Text('name'),
                  subtitle: Text('ammar'),
trailing: Switch(value: true, onChanged: (value) {
  
},),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
