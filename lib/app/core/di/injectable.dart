import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/di/injectable.config.dart';
import 'package:miccional_app/main.data.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies(String environment) async {
  getIt.registerRepositories();
  var getItinstance = $initGetIt(getIt, environment: environment);
  await getIt.allReady();

  return getItinstance;
}
