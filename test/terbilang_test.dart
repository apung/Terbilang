import 'package:flutter_test/flutter_test.dart';
import 'package:terbilang/terbilang.dart';

void main() {
  group('Terbilang lang:id', () {
    final _terbilang = Terbilang();

    test('test with prefix', () {
      expect(_terbilang.make(number: 1200, prefix: "total"), "total seribu dua ratus");
    });

    test('test with suffix', () {
      expect(_terbilang.make(number: 1200, suffix: "rupiah"), "seribu dua ratus rupiah");
    });

    test('test with prefix and suffix', () {
      expect(_terbilang.make(number: 1200,  prefix: "senilai", suffix: "rupiah"), "senilai seribu dua ratus rupiah");
    });

    test('test nilai pecahan', () {
      expect(_terbilang.make(number: 129.56), "seratus dua puluh sembilan koma lima enam");
    });

    test('test nilai 1', () {
      expect(_terbilang.make(number: 1), "satu");
    });

    test('test nilai -1', () {
      expect(_terbilang.make(number: -1), "negatif satu");
    });

    test('test nilai 1000', () {
      expect(_terbilang.make(number: 1000), "seribu");
    });

    test('test nilai 10000', () {
      expect(_terbilang.make(number: 10000), "sepuluh ribu");
    });

    test('test nilai 100000', () {
      expect(_terbilang.make(number: 100000), "seratus ribu");
    });

    test('test nilai 1000000', () {
      expect(_terbilang.make(number: 1000000), "satu juta");
    });

    test('test nilai 1200000', () {
      expect(_terbilang.make(number: 1200000), "satu juta dua ratus ribu");
    });
  });

  group('Terbilang lang:en', () {
    final _terbilang = Terbilang(lang: "en");
    test('test with prefix', () {
      expect(_terbilang.make(number: 1200, prefix: "price :"), "price : one thousand, two hundred");
    });

    test('test with suffix', () {
      expect(_terbilang.make(number: 1200, suffix: "dollars"), "one thousand, two hundred dollars");
    });

    test('test with prefix and suffix', () {
      expect(_terbilang.make(number: 1200,  prefix: "price :", suffix: "dollars"), "price : one thousand, two hundred dollars");
    });

    test('test fractions', () {
      expect(_terbilang.make(number: 129.56), "one hundred and twenty-nine point five six");
    });

    test('test nilai 1', () {
      expect(_terbilang.make(number: 1), "one");
    });

    test('test nilai -1', () {
      expect(_terbilang.make(number: -1), "negative one");
    });

    test('test nilai 1000', () {
      expect(_terbilang.make(number: 1000), "one thousand");
    });

    test('test nilai 10000', () {
      expect(_terbilang.make(number: 10000), "ten thousand");
    });

    test('test nilai 100000', () {
      expect(_terbilang.make(number: 100000), "one hundred thousand");
    });

    test('test nilai 1000000', () {
      expect(_terbilang.make(number: 1000000), "one million");
    });

    test('test nilai 1200000', () {
      expect(_terbilang.make(number: 1200000),
          "one million, two hundred thousand");
    });
  });
}
