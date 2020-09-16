import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/pages/pages.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: ProfilePage, initial: true),
])
class $MessagesRouter {}
