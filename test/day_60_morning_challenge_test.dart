import 'package:test/test.dart';
import '../bin/main.dart';

void main() {

  test("REMOVE FIRST AND LAST", () {
    expect(removeFirstAndLast("ABBA"), "BB");
  });
  test("REMOVE FIRST AND LAST", () {
    expect(removeFirstAndLast("ABB"), "BB");
  });
  test("REMOVE FIRST AND LAST", () {
    expect(removeFirstAndLast("ABBAAAAA"), "BB");
  });

}
