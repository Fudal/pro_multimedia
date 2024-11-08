import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pro_multimedia/injections/bloc_factory.dart';
import 'package:pro_multimedia/injections/modules.dart';
import 'package:pro_multimedia/pro_multimedia_app.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  final GetIt injector = GetIt.instance;
  registerModules(injector);

  runApp(_runApp(injector));
}

Widget _runApp(GetIt injector) {
  return MultiProvider(
    providers: [
      Provider<AppTypography>.value(value: AppTypography.memeoHealth),
      Provider<BlocFactory>(create: (context) => BlocFactory(injector: injector)),
    ],
    child: ProMultimediaApp(),
  );
}
