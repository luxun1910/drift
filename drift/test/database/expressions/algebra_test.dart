import 'package:drift/drift.dart';
import 'package:test/test.dart';

import '../../test_utils/test_utils.dart';

void main() {
  const i1 = CustomExpression<int>('i1', precedence: Precedence.primary);
  const i2 = CustomExpression<int>('i2', precedence: Precedence.primary);
  const b1 = CustomExpression<BigInt>('b1', precedence: Precedence.primary);
  const b2 = CustomExpression<BigInt>('b2', precedence: Precedence.primary);
  const s1 = CustomExpression<String>('s1', precedence: Precedence.primary);
  const s2 = CustomExpression<String>('s2', precedence: Precedence.primary);

  test('arithmetic test', () {
    expect(i1 + i2 * i1, generates('i1 + i2 * i1'));
    expect(i1 + i2 * i1, generates('i1 + i2 * i1'));
    expect((i1 + i2) * i1, generates('(i1 + i2) * i1'));
    expect(i1 - i2, generates('i1 - i2'));
    expect(i1 - -i2, generates('i1 - -i2'));
    expect(i1 / i2, generates('i1 / i2'));

    expectEquals(i1 + i2, i1 + i2);
    expectNotEquals(i1 + i2, i2 + i1);
  });

  test('BigInt arithmetic test', () {
    expect(b1 + b2 * b1, generates('b1 + b2 * b1'));
    expect(b1 + b2 * b1, generates('b1 + b2 * b1'));
    expect((b1 + b2) * b1, generates('(b1 + b2) * b1'));
    expect(b1 - b2, generates('b1 - b2'));
    expect(b1 - -b2, generates('b1 - -b2'));
    expect(b1 / b2, generates('b1 / b2'));

    expectEquals(i1 + i2, i1 + i2);
    expectNotEquals(i1 + i2, i2 + i1);
  });

  test('string concatenation', () {
    expect(s1 + s2, generates('s1 || s2'));
  });

  test('absolute values', () {
    expect(i2.abs(), generates('abs(i2)'));
  });

  test('with columns', () {
    expect(const Variable(0) - (i1 - Variable(10)),
        generates('? - (i1 - ?)', [0, 10]));
    expect((const Variable(0) - i1) - Variable(10),
        generates('(? - i1) - ?', [0, 10]));
  });
}
