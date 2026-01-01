import 'package:flutter_test/flutter_test.dart';
import 'package:learning_sonar_qupe/main.dart';


void main() {
  testWidgets('App builds', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(true, true);
  });
}