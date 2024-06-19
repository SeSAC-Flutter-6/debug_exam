import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      nowTime = timeDataOne.first.ty1;

      final month = nowDate.substring(5, 7);
      int monthNum = int.parse(month);
      int regionNum = (monthNum + 1) ~/ 2;

      return (monthNum >= 1 && monthNum <= 12) ? '경오$regionNum국' : nowTime;
    } else {
      // Handle the case when the list is empty
      return '경오7국'; // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);
    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();
    int regionNum = nowTime.hour ~/ 2 + 1;
    return (nowTime.hour >= 0 && nowTime.hour < 24) ? '갑자$regionNum국' : result;
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
