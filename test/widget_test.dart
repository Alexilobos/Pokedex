// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

//import 'package:pokedex_tercer_parcial/main.dart';

String getImageUrl(int id){
  String strid = id.toString(); 
  String newstrid = "";
  for (var i = strid.length; i < 4; i++) {
    newstrid = strid.padLeft(i,"0");
  }
  return newstrid;
}


void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    //await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    //expect(find.text('0'), findsOneWidget);
    //expect(find.text('1'), findsNothing);
    expect(getImageUrl(1), "001");
    expect(getImageUrl(9), "009");
    expect(getImageUrl(10), "010");
    expect(getImageUrl(99), "099");
    expect(getImageUrl(100), "100");


    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}
