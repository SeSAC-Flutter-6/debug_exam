import 'package:intl/intl.dart';

void main() {
  YukymController yukymController = YukymController();
  print(yukymController.getTyA());
  print(yukymController.getTyB());
}

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    final month = nowDate.substring(5, 7);
    final tyA = (int.parse(month) / 2).round();
    return '경오$tyA국';
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne();
    final hour = DateTime.now().hour;
    final ty = timeDataOne.first;
    String tyB = ty.ty12;

    // 2~4, 14~16 없음
    if (hour >= 0 && hour < 2) {
      tyB = ty.ty1;
    } else if (hour >= 4 && hour < 6) {
      tyB = ty.ty2;
    } else if (hour >= 6 && hour < 8) {
      tyB = ty.ty3;
    } else if (hour >= 8 && hour < 10) {
      tyB = ty.ty4;
    } else if (hour >= 10 && hour < 12) {
      tyB = ty.ty5;
    } else if (hour >= 12 && hour < 14) {
      tyB = ty.ty6;
    } else if (hour >= 16 && hour < 18) {
      tyB = ty.ty7;
    } else if (hour >= 18 && hour < 20) {
      tyB = ty.ty8;
    } else if (hour >= 20 && hour < 22) {
      tyB = ty.ty9;
    } else if (hour >= 22 && hour < 24) {
      tyB = ty.ty10;
    }
    return tyB;
  }

  List<YukymTimeModel> _getTimeDataOne() {
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
