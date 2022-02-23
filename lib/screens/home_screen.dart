import 'package:astro_talk_flutter/constants/constants.dart';
import 'package:astro_talk_flutter/providers/home_provider.dart';
import 'package:astro_talk_flutter/screens/home_tabs/home_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../widgets/my_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _initCategories();
  }

  void _initCategories() {
    var pro = Provider.of<HomeProvider>(context, listen: false);
    pro.getQuestionCategories();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.segment,
            color: theme.primaryColor,
          ),
        ),
        title: Image.asset(icIcon, height: kTextTabBarHeight),
        elevation: 0.0,
        actions: [
          ElevatedButton(
            onPressed: _onProfilePressed,
            child: Image.asset(icProfile),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0.0,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15.00),
            ),
          )
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          //statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          if (provider.bottomBarIndex == 0) {
            return const HomeTab();
          } else if (provider.bottomBarIndex == 1) {
            return const TalkTab();
          } else if (provider.bottomBarIndex == 2) {
            return const QuestionTab();
          } else if (provider.bottomBarIndex == 3) {
            return const ReportTab();
          } else if (provider.bottomBarIndex == 4) {
            return const ChatTab();
          } else {
            return const Center();
          }
        },
      ),
      bottomNavigationBar: Selector<HomeProvider, int>(
        builder: (context, index, child) {
          return MyBottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: _onBottomBarChanged,
            currentIndex: index,
          );
        },
        selector: (context, provider) => provider.bottomBarIndex,
      ),
    );
  }

  void _onBottomBarChanged(int value) {
    var pro = Provider.of<HomeProvider>(context, listen: false);
    pro.changeIndex(value);
  }

  void _onProfilePressed() {
    Navigator.of(context).pushNamed(rpProfileHistory);
  }
}
