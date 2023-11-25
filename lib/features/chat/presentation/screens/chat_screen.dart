import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/features/chat/presentation/widgets/chat_bubble.dart';
import 'package:markaz_elamal/features/chat/presentation/widgets/get_chat_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final TextEditingController controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: getChatAppBar(context),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              reverse: true,
              controller: scrollController,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ChatBubble(
                  message: "#free palestine",
                );
              },
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                    hintText: AppStrings.typeMessage.tr(context),
                    hintStyle: CustomTextStyle.poppins400secondary16,
                    suffixIcon: const Icon(
                      Icons.send,
                      color: AppColors.primary,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(16),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
