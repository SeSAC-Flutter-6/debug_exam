class YukymController {
  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  // month를 바탕으로 인덱스 계산
  String getTyA() {
    int month = DateTime.now().month;
    return '경오${((month + 1) ~/ 2).toString()}국';
  }

  // 2시간 단위로 인덱스 계산
  String getTyB() {
    int nowHour = DateTime.now().hour;
    return '갑자${((nowHour ~/ 2) + 1).toString()}국';
  }
}
