import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/presenter/pages/pages.dart';
import 'package:miccional_app/presenter/pages/records_page/records_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: RecordsPage, initial: true),
  MaterialRoute(page: FirstPage)
])
class $RecordsRouter {}
