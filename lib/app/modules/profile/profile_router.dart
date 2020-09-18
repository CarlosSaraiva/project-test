import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/app/modules/profile/profile_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: ProfilePage, initial: true),
])
class $ProfileRouter {}
