import 'package:astro_talk_flutter/constants/constants.dart';
import 'package:astro_talk_flutter/screens/home_screen.dart';
import 'package:astro_talk_flutter/screens/my_profile.dart';
import 'package:astro_talk_flutter/screens/profile_and_history.dart';
import 'package:flutter/material.dart';

class NavigationManager {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rpHomeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case rpProfileHistory:
        return MaterialPageRoute(builder: (context) => const ProfileAndHistory());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
