// test/flag_generator_test.dart

import 'package:all_country_code/src/utils/flag_generator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlagGenerator', () {
    test('generateFlag generates correct emoji flags for valid ISO codes', () {
      expect(FlagGenerator.generateFlag('US'), '🇺🇸');
      expect(FlagGenerator.generateFlag('GB'), '🇬🇧');
      expect(FlagGenerator.generateFlag('CA'), '🇨🇦');
      expect(FlagGenerator.generateFlag('FR'), '🇫🇷');
      expect(FlagGenerator.generateFlag('DE'), '🇩🇪');
    });

    test('generateFlagForWeb generates correct emoji flags for valid ISO codes',
        () {
      expect(FlagGenerator.generateFlagForWeb('US'), '🇺🇸');
      expect(FlagGenerator.generateFlagForWeb('GB'), '🇬🇧');
      expect(FlagGenerator.generateFlagForWeb('CA'), '🇨🇦');
      expect(FlagGenerator.generateFlagForWeb('FR'), '🇫🇷');
      expect(FlagGenerator.generateFlagForWeb('DE'), '🇩🇪');
    });

    test('generateFlag returns empty string for empty ISO code', () {
      expect(FlagGenerator.generateFlag(''), '');
    });

    test('generateFlagForWeb returns empty string for empty ISO code', () {
      expect(FlagGenerator.generateFlagForWeb(''), '');
    });

    test('generateFlag handles lowercase ISO codes', () {
      expect(FlagGenerator.generateFlag('us'), '🇺🇸');
      expect(FlagGenerator.generateFlag('gb'), '🇬🇧');
      expect(FlagGenerator.generateFlag('ca'), '🇨🇦');
    });

    test('generateFlagForWeb handles lowercase ISO codes', () {
      expect(FlagGenerator.generateFlagForWeb('us'), '🇺🇸');
      expect(FlagGenerator.generateFlagForWeb('gb'), '🇬🇧');
      expect(FlagGenerator.generateFlagForWeb('ca'), '🇨🇦');
    });

    test('generateFlag handles invalid characters', () {
      expect(FlagGenerator.generateFlag('1A'), '1🇦');
      expect(FlagGenerator.generateFlag('A1'), '🇦1');
      expect(FlagGenerator.generateFlag('A!'), '🇦!');
      expect(FlagGenerator.generateFlag('12'), '12');
      expect(FlagGenerator.generateFlag('!@'), '!@');
      expect(FlagGenerator.generateFlag('US1'), '🇺🇸1');
      expect(FlagGenerator.generateFlag('1US'), '1🇺🇸');
    });

    test('generateFlagForWeb handles invalid characters', () {
      expect(FlagGenerator.generateFlagForWeb('1A'), '1🇦');
      expect(FlagGenerator.generateFlagForWeb('A1'), '🇦1');
      expect(FlagGenerator.generateFlagForWeb('A!'), '🇦!');
      expect(FlagGenerator.generateFlagForWeb('12'), '12');
      expect(FlagGenerator.generateFlagForWeb('!@'), '!@');
      expect(FlagGenerator.generateFlagForWeb('US1'), '🇺🇸1');
      expect(FlagGenerator.generateFlagForWeb('1US'), '1🇺🇸');
    });
  });
}
