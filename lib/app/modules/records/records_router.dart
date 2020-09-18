import 'package:auto_route/auto_route_annotations.dart';
import 'package:miccional_app/app/modules/records/first_page/first_page.dart';
import 'package:miccional_app/app/modules/records/second_page/records_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: FirstPage, initial: true),
  MaterialRoute(page: SecondPage)
])
class $RecordsRouter {}
