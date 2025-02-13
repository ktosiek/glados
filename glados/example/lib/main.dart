import 'package:glados/glados.dart';
import 'package:test/test.dart';
import 'package:tuple/tuple.dart';

// part 'main.g.dart';

int max(List<int> input) {
  if (input.isEmpty) return null;
  int max;
  for (var item in input) {
    max ??= item;
    if (item > max) {
      max = item;
    }
  }
  return max;
}

void main() {
  group('maximum', () {
    Glados<List<int>>(null, ExploreConfig(initialSize: 1, random: Random(3)))
        .test('...', (list) {
      print('Testing for list $list.');
      assert(list.where((it) => it < 0).length >
          list.where((it) => it >= 0).length);
    });

    // Glados<List<int>>().test('is only null if the list is empty', (list) {
    //   if (max(list) == null) {
    //     expect(list, isEmpty);
    //   }
    // });
    // Glados(any.nonEmptyList(any.int)).test('is in the list', (list) {
    //   expect(list, contains(max(list)));
    // });
    // Glados2<int, Tuple2<int, User>>().test('is >= all items', (a, b) {
    //   // var maximum = max(list);
    //   // for (var item in list) {
    //   //   expect(maximum, greaterThanOrEqualTo(item));
    //   // }
    // });
  });
}

class User {
  User.blub(
    this.email,
    this.password, {
    this.age,
    this.foo,
    this.bar,
    this.baz,
    this.blubbel,
    this.schub,
    this.shooze,
    this.whooze,
    this.zoooooome,
  });

  final String email;
  final String password;
  final int age;
  final Duration foo;
  final double bar;
  final DateTime baz;
  final BigInt blubbel;
  final int schub;
  final int shooze;
  final bool whooze;
  final bool zoooooome;

  int get doubleAge => age * 2;
}

enum Ripeness {
  ripe,
  medium,
  unripe,
}
