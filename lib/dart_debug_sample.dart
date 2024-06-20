import 'package:intl/intl.dart';

class YukymController {
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  // month를 바탕으로 인덱스 계산
  String getTyA() {
    int month = int.parse(nowDate.substring(5, 7));

    if (month < 1 || month > 12) {
      return '경오7국';
    }
    String index = ((month + 1) ~/ 2).toString();
    return '경오$index국';
  }

  String getTyB() {
    // 2시간 단위로 인덱스 계산
    int nowHour = DateTime.now().hour;
    String index = ((nowHour ~/ 2) + 1).toString();

    return '갑자$index국';
  }
}
