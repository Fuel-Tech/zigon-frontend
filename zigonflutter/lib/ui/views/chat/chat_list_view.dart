import 'package:flutter/material.dart';

import '../../../utility/app_utility.dart';
import '../../widgets/common_widgets.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUtil.primary,
      extendBodyBehindAppBar: true,
      appBar: CommonWidgets.customAppBar(title: 'Chat'),
      body: Container(),
    );
  }
}
