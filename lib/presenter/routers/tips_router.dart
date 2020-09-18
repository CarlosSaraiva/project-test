import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/pages/tips_page/tips_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: TipsPage, initial: true),
])
class $TipsRouter {}
