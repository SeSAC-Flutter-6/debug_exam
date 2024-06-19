import 'package:intl/intl.dart';

class YukymController {
  // mm소문자는 시분초에 분을 나타낸다
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      final month = int.parse(nowDate.substring(5, 7));
      if (month > 0 && month < 13) {
        return '경오${(month + 1) ~/ 2}국';
      }
      return timeDataOne.first.ty1;
    } else {
      return '경오7국';
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (DateTime.now().hour < 2) return timeDataOne.first.ty1;
    if (DateTime.now().hour < 4) return timeDataOne.first.ty2;
    if (DateTime.now().hour < 6) return timeDataOne.first.ty3;
    if (DateTime.now().hour < 8) return timeDataOne.first.ty4;
    if (DateTime.now().hour < 10) return timeDataOne.first.ty5;
    if (DateTime.now().hour < 12) return timeDataOne.first.ty6;
    if (DateTime.now().hour < 14) return timeDataOne.first.ty7;
    if (DateTime.now().hour < 16) return timeDataOne.first.ty8;
    if (DateTime.now().hour < 18) return timeDataOne.first.ty9;
    if (DateTime.now().hour < 20) return timeDataOne.first.ty10;
    if (DateTime.now().hour < 22) return timeDataOne.first.ty11;

    return timeDataOne.first.ty12;
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';
}
