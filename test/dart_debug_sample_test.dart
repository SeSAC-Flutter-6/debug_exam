import 'package:dart_debug_sample/dart_debug_sample.dart';
import 'package:test/test.dart';

void main() {
  group('getTyA 테스트', () {
    YukymController yukymController = YukymController();
    test('nowDate에 월이 01, 02 이면, getTyA()는 "경오 1국" 이어야한다.', () {
      yukymController.nowDate = '2024-01-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('경오1국'));

      yukymController.nowDate = '2024-02-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('경오1국'));
    });

    test('nowDate에 월이 03, 04 이면, getTyA()는 "경오2국" 이어야한다.', () {
      yukymController.nowDate = '2024-03-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('경오2국'));

      yukymController.nowDate = '2024-04-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('경오2국'));
    });

    test('nowDate에 월이 01, 12 사이의 숫자가 아니면, getTyA()는 "갑자1국" 이어야한다.', () {
      yukymController.nowDate = '2024-14-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('갑자1국'));

      yukymController.nowDate = '2024-00-01';
      yukymController.getTyA();
      expect(yukymController.getTyA(), equals('갑자1국'));
    });
  });
}
