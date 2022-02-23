import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar_tile.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBarTile(label: "Chat", iconPath: icChat),
    );
  }
}
