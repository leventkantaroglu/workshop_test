import 'package:workshop_test/model/favorites.dart';
import 'package:test/test.dart';

void main() {
  group('Favorilerim Test', () {
    var favorites = Favorites();
    test('Favorilere ekleme', () {
      var number = 3;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('Favorilerden çıkarma', () {
      var number = 2;
      favorites.add(number);
      expect(favorites.items.contains(number), false);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
