import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/pages/diary_page/diary_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: DiaryPage, initial: true),
])
class $DiariesRouter {}
