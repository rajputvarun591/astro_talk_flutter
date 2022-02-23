import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar_tile.dart';

class TalkTab extends StatelessWidget {
  const TalkTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBarTile(label: "Talk", iconPath: icTalk),
    );
  }
}
