import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/chat/presentation/widgets/chat_item.dart';
import 'package:markaz_elamal/features/chat/presentation/widgets/get_chats_app_bar.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getChatsAppBar(context),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return const ChatItemWidget();
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 2,
                  );
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
