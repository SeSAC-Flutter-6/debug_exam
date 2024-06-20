# 디버깅 과정
## 프로그램 돌려보기
1. pub get
2. void main() 실행
3. console 출력 (현재시간: 2024-06-19 15:30)  
   갑자1국  
   갑자1국

### 첫번재 에러 발견
1. getTyA 출력 에러   
2. 브레이크 포인트 활용하여 코드 한 줄씩 확인한다  
   yukymController에 적절한 값이 들어오는지 확인한다  
   yukymController.nowDate="2024-15-19" 확인
3. Datetime format에서 mm은 minute, MM은 month를 의미한다  
   String nowDate = DateFormat('yyyy-mm-dd').format(DateTime.now()); 를  
   String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now()); 로 수정  
4. getTyA 정상 출력 확인  

### 두번째 에러 발견
1. getTyB 출력 에러 
2. 브레이크 포인트 활용하여 코드 한 줄씩 확인한다  
3. nowTime에 적절한 값이 들어오는지 확인한다  
   nowTime.hour은 정상적인 값인 것을 확인
4. nowTime.hour 값을 바꿔도 첫번째 조건문에 해당하는 값을 return한다  
5. 논리식이 잘못됨을 확인하고 || -> &&으로 변경  
6. 아래 조건문이 빠져 있고 YukymTimeModel과 맞지 않아 추가함  
   else if (nowTime.hour >= 2 && nowTime.hour < 4) {...}  
   else if (nowTime.hour >= 14 && nowTime.hour < 16) {...} 