import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar_tile.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBarTile(label: "Home", iconPath: icHome),
    );
  }
}
