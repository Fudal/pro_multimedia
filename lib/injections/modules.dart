import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pro_multimedia/injections/modules.config.dart';

void registerModules(GetIt injector) {
  configureInjection(injector);
}

@injectableInit
void configureInjection(GetIt getIt) => getIt.init();
