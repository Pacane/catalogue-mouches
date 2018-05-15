import 'package:test/test.dart';
import 'package:catalogue_mouches/utils.dart';

void main() {
  group('partially flatten a list', () {
    test('returns empty list when input is empty list', () {
      final result = partiallyFlattenList([], []);

      expect(result, []);
    });

    test('returns list with element when element is not iterable', () {
      final elementToAdd = 12;
      final result = partiallyFlattenList([], elementToAdd);

      expect(result, [12]);
    });

    test(
        'returns list with element added when element is not iterable and '
        'initial list already contains something', () {
      final elementToAdd = 12;
      final previous = ['Hello'];
      final result = partiallyFlattenList(previous, elementToAdd);

      expect(result, ['Hello', 12]);
    });

    test('returns list with appended items of the new list to the previous one',
        () {
      final elementToAdd = [12, 13];
      final previous = ['Hello'];
      final result = partiallyFlattenList(previous, elementToAdd);

      expect(result, ['Hello', 12, 13]);
    });
  });
}
