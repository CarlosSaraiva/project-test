import 'package:auto_route/auto_route.dart';

class CoreGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState<RouterBase> navigator,
      String routeName, Object arguments) {
    return Future.value(true);
  }
}
