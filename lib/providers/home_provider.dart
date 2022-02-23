import 'package:astro_talk_flutter/network/network_service.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class HomeProvider extends ChangeNotifier {
  /// Here we will maintain bottom navigation Bar Index and Initially it will be 0
  int bottomBarIndex = 0;

  bool isCategoriesLoading = true;
  List<QuestionCategory> categories = [];

  /// Here we change the bottom bar Index and Change the UI according to current Bottom bar Index
  void changeIndex(int value) {
    bottomBarIndex = value;
    notifyListeners();
  }

  void getQuestionCategories() async {
    categories = await NetworkService.getQuestions();
    isCategoriesLoading = false;
    notifyListeners();
  }

}