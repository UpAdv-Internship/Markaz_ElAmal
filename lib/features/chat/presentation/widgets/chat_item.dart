
import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigate(context: context, route: Routes.chatScreen);
      },
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/osama1.png"),
                backgroundColor: AppColors.white,
                radius: 30,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr.Sa3eed",
                      style: CustomTextStyle.poppins600secondary20),
                  Text(
                    "Can I Help You",
                    style: CustomTextStyle.poppins500secondary20,
                  ),
                ],
              ),
              const Spacer(),
              const Text("12:25 AM")
            ],
          ),
        ),
      ),
    );
  }
}
