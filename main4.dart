import 'dart:html';

class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print('run!');
  }
}

class Tall {
  final double height = 1.99;
}

class Human {
  final String name;
  Human(this.name);
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { red, blue }

class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team,
  }) : super();
  // @override
  // void sayHello() {
  //   super.sayHello();
  // }
}

class Hores with Strong, QuickRunner {}

class kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  // name: 'xogus'
  // player.name;
  // player.sayHello();
  player.runQuick();
}
