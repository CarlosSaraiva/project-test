import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/pages/first_question_page/first_question_page.dart';
import 'package:miccional_app/presenter/pages/second_question_page/second_question_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: FirstQuestionPage, initial: true),
  MaterialRoute(page: SecondQuestionPage),
])
class $SurveyRouter {}
