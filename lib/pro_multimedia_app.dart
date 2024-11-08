import 'package:flutter/material.dart';
import 'package:pro_multimedia/routing/router.dart';
import 'package:pro_multimedia/style/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProMultimediaApp extends StatefulWidget {
  const ProMultimediaApp({super.key});

  @override
  ProMultimediaAppState createState() => ProMultimediaAppState();
}

class ProMultimediaAppState extends State<ProMultimediaApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  late AppRouter appRouter;

  @override
  void initState() {
    appRouter = AppRouter(navigatorKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().data,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      locale: Locale('pl'),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ListTileTheme(
        dense: true,
        child: child ?? SizedBox(),
      ),
    );
  }
}
