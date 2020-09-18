import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/app/modules/intro/tutorial.page.dart';
import 'package:miccional_app/app/modules/intro/welcome.page.dart';
import 'package:miccional_app/app/shared/navigators/bottom_tab_navigator.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: WelcomePage, initial: true),
  MaterialRoute(page: TutorialPage, path: '/tutorial'),
  MaterialRoute(page: BottomTabNavigator, path: '/main')
])
class $RootRouter {}
