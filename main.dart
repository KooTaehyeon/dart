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


//변수 선언법
/*
변수 
1.variavle
variable: var 이름:name 할당된 값: 태현
 var name = '태현';
2. Numbers
  정수
  int number = 12;
  실수
  double number2= 2.5; 
3.String 대문자로 시작해야함 ''|| "" 글자라고 인식을 해주기 위해 따옴표를 해줌 
   String name = '태현';
4.Boolean 진실&&거짓
  bool isTrue = true;
  bool isFalse = false;
5. var, dynamic 타입
  자유롭게 타입을 설정할때 var타입을 사용함
  하지만 재선언 할때는 타입이 지정되어서 한타입으로만 사용이 가능함.
  하지만 처음 var name; 으로 선언시에는 dynamic 처럼 타입 재설정이 가능함
  var name = '태현';
  var number = 2 ; 
   dynamic 같은 경우에는 재선언할때 타입이 유동적으로 바꿔짐.
  dynamic name = '태현';
6.List
    두가지 방법의 사용법은 똑같다.
  List listName = []; 
  List ListName2 = new List();
  ListName2.add('xogus')
  ListName2.add('xogus1')
  ListName2.add('xogus2') ex) ['xogus','xogus1','xogus2'];
 6.1 List Index
 배열은 0부터 시작함  
  ListName2.romoveAt(1); ex) ['xogus','xogus2'];
  ListName2[0]= '태현';   ex) ['태현','xogus2'];
  list 종류
  Growable List: 리스트의 사이즈가 자유롭게 늘어나거나 줄어들 수 있는 리스트
  Fixed Length List: 선언할때 길이가 정해져서 추가적으로 길이를 늘이거나 줄일수 없는 리스트
  List<String> name = []; 타입을 지정할경우 타입에 맞는걸 넣어줘야함.
  List<Struing> btsList = new List(3); 값을 변경하고 싶을떄는 3개의 길이인 인덱스 0,1,2 btsList[0] 으로 변경해야함
  List redVelvetList = ['아이린','슬기','웬디','조이','예리'];
  List redVelvetList2 = new List.from(['아이린','슬기','웬디','조이','예리']); 
  길이를 알고싶을땐 redVelvetList.length 를 하면 5 라고 나옴
7.map :key value pair 이름 과 설명 이름:key 설명: value
  Map dictionary ={
  // 키 : 벨류
  'apple': '사과',
  'banana': '바나나'
  };  ex) {apple:사과, banana:바나나} 로 나옴
    Map dictionary2= {}
    dictionary2.addAll({
       'apple': '사과',
       'banana': '바나나'
    });
    지울땐
    dictionary2.remove('apple');
    ex) {banana:바나나} 로 나옴
    변경할시 
    dictionary2[banana] = '바나나 아님';
     ex) {banana:바나나 아님} 로 나옴
    선언 방식
    Map map = {};
    Map map2 = new Map();
    Map map3 = new Map.from({
       'apple': '사과',
       'banana': '바나나'
    })
    map3.keys.toList(); ex) [apple,banana]
    map3.values.toList(); ex) [사과,바나나]

    Map<String, int> price = {
      key 와 value 타입 설정해주기
      'apple': 2000,
      'banan': 3000,
    } // key 값은 중복이 안됨

 8. 변수에 대한 관례 
 // 변수이름은 한번만 선언이 가능함 (재할당은 가능) 타입이 달라도 변수의 이름은 재선언 불가능함
    String name = '태현';
    name ='태현0' 이건 가능함
    String name = '태현1';
    String _name = '사람'; 이건 private 변수를 사용할때 많이 사용함
    String lastName = '현' 은 복합 단어가 합쳐진 변수이름 같은경우에는 카멜케이스를 사용한다 
    String Name = '태현'; 다른 변수로 인식이 되지만 대문자를 첫이름으로 사용할때는 class 할때 많이 사용하므로 
    같이 혼용해서 사용하게되면 유지보수 혹은 바로 알아보기가 힘들수가 있음.
 9.Final, Const
  final String name= '태현'; 변수 앞에 final 을 선언하면 그 변수는 처음 선언했을때 값을 그대로 유지 시켜주며
  변경이 불가능함.
  const String name2 ='태현' final 과 동일하게 작용함.
  차이점 
  const 같은 경우에는 컴파일타임 전에 값이 지정되어있어야함.
       컴파일: 사람이 읽기 편한 코드가 컴퓨터가 읽기 편한 코드로 변환하는 과정.
  final 같은 경우에는 런타임 전에 값이 지정되어있어야함.
       런타임: 컴파일이 끝난후에 그뒤에 실행되는 과정


*/