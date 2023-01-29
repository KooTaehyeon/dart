void main() {
  // dart 기본 자료형
  String name = '태현'; // 정의할때에는 작은 따옴표를 사용
  bool alive = true; // true , false 값 진실혹은 거짓
  int age = 29; // 숫자형
  double age2 = 29.1; // 숫자형에 소수점을 붙일수가 있음
  num x = 2; // num 을 사용할경우 int형과 double 두가지 자료형을 사용할수가 있음.
  x = 2.2;
  // list
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ]; // List<int> numbers = [1, 2, 3, 4]; 로 사용 가능함 이경우에는 배열안에 자료형을 명시하고 싶을때 사용함
  // collection if 로는 list 를 만들수 있음. if으로 존재할수도 존재하지않을수도 있는 요소를 가지고 만들수가 있음.
  // if(giveMeFive){ 위에 if문과 같은 동작을 함
  //   numbers.add(5)
  // }
  // Striong interpolation 달러기호뒤에 반드시 변수를 할당해주면 됌
  var myName = 'xogus';
  var greeting =
      'Hello everyone, my name is $myName, and I\'m age x 2 = ${age * age}!';
  print(greeting); // Hello everyone, my name is xogus, nice to meet you!
  // Collection For
  var oldFriends = ['대성', '성균', '상준'];
  //var newFriends = ['대엽', '주현', ...oldFriends];
  var newFriends = [
    '대엽',
    '주현',
    for (var friend in oldFriends) '🥰 $friend',
  ];
  print(newFriends);
}
