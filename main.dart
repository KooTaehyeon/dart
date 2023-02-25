String sayHello(
        {required String name, required int age, required String country}) =>
    'Hello $name you are $age, and you comefrom $country !';
String sayHello2(String name, int age, [String? country = '한국3']) =>
    'Hello $name you are $age, and you comefrom $country !';
num plus(num a, num b) => a + b;
String capotalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

// typedef
// typedef ListOfInts = List<int>;
// List<int> reverseListOfNumbers(List<int> list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }
typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return 'Hi ${userInfo['name']}';
}

// class 클래스 생성시에는 무조건 타입을 설정 해줘야함
class Player {
  final String name;
  int xp;
  String team;
  int age;
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age}); // constructors 생성자
  Player.createBluePlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  Player.createRedPlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 2;
  void sayHellos() {
    print('Hi my name is ${name}');
  }
}

void main() {
  //late final String name; // 처음에 변수에 데이터 없이 넣을수 있을 나중에 api 를 호출해서 데이터 를 넣기에 좋음
  // 그리고 값을 넣기전에는 접근을 할수 없기 떄문에 사전에 실수를 방지 할수 있음.
  // do something go to api
//  name = '태현';
  // 여전히 final 변수 이기 떄문에 딱 한번만 할당해줄수 있음
  //name = 'new';
  // const  dart 에서는 컴파일 타임 constant 를 만들어줌
  //const name = '태현';
  // name = '태현2' 컴파일 이후 처음 설정 값이후로 절대로 바뀌지 않음
  // null safety : 잘못된 상태의 변수를 참조하는걸 막아줌 null 값을 의도적으로 명시하고 싶을떄 사용 String? name; 명시해줌.
  // String? name = 'xogus';
  //name.isEmpty; X
  // if (name != null) {
  //   name = null;
  //   // isEmpty를 사용할경우는 이렇게!
  //   name?.isEmpty;
  // }
  print(sayHello(name: '태현', age: 29, country: '한국'));
  var results = sayHello2('태현', 28);
  print(results);
  capotalizeName('xogus');
  capotalizeName(null);
  print(plus(1, 3));
  String? name3;
  name3 ??= 'nico';
  name3 = null;
  name3 ??= '태현';
  print(name3);
  print(sayHi({'name': 'nico'}));
  // print(reverseListOfNumbers([1, 2, 3]));

// class

  var player = Player(name: 'xogus', xp: 3000, team: 'red', age: 29);
  print(player);
  print(player.name);
  print(player.xp);

  player.sayHellos();
  print('---------------------');

  var player2 = Player.createBluePlayer(name: 'xogus', age: 29);
  print(player2.age);
  print(player2.xp);
  print(player2);
  print('---------------------');
  var player3 = Player.createRedPlayer(name: 'xogus', age: 29);
  print(player3.team);
  print(player3.xp);
  print(player3);
}
