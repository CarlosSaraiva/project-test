import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/presenter/routers/survey_router.gr.dart';

class SurveyNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ExtendedNavigator(
        router: SurveyRouter(),
      ),
    );
  }
}
