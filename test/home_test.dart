import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop_test/model/favorites.dart';
import 'package:workshop_test/screens/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

Favorites? favoritesList;

//createHomeScreen()
Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );

void main() {
  group('Komponent Testleri - Anasayfa ', () {
    testWidgets('Scroll özelliğini test ediyoruz', (tester) async {
      await tester
          .pumpWidget(createHomeScreen()); //pumpWidget metodu widgeti ekrana
      expect(find.text('Sayı 0'),
          findsOneWidget); // Ekranda "Sayı 0" elemanını buluyoruz
      await tester.fling(find.byType(ListView), const Offset(0, -200),
          30000); // ListView komponenetini otomatik kaydırıyoruz
      await tester
          .pumpAndSettle(); // Animasyonun tamamlanması için bekletiyoruz.
      expect(find.text('Sayı 0'),
          findsNothing); // Ekranda artık Sayı 0 'in olmadığına emin oluyoruz */
    });
  });
}
