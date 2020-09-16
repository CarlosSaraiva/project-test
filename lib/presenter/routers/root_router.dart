import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/navigators/bottom_tab_navigator.dart';
import 'package:miccional_app/presenter/pages/pages.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: IntroPage, initial: true),
  MaterialRoute(page: SliderPage),
  MaterialRoute(page: BottomTabNavigator, path: '/main')
])
class $RootRouter {}
