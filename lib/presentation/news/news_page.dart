import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.tr.wBudowie),
      ),
    );
  }
}