import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pro_multimedia/pro_multimedia_app.dart';

void main() {
  testWidgets('App initializes without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const ProMultimediaApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
