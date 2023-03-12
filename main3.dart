abstract class Human {
  void walk();
}

enum Team { red, bule }

enum XPLevel { beginner, pro, medium }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;
  Player({required this.name, required this.xp, required this.team});
  void walk() {
    print('im walking');
  }

  void sayHello() {
    print('Hi my name is $name');
  }
}

class Coach extends Human {
  void walk() {
    print('the coach is walking');
  }
}

void main() {
  var xoguss = Player(name: 'xogus', xp: XPLevel.beginner, team: Team.red);
  var potat = xoguss
    ..name = 'xogus12'
    ..xp = XPLevel.pro
    ..team = Team.bule
    ..sayHello();
}
