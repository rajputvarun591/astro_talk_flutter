import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar_tile.dart';

class ReportTab extends StatelessWidget {
  const ReportTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: BottomBarTile(label: "Reports", iconPath: icReports),
    );
  }
}
