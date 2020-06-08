import 'character.dart';
class Application {
  List<Character> heroes;
  List<Character> villains;
  List<Character> antiHeroes;
  List<Character> aliens;
  List<Character> humans;

  Application(
      {this.heroes, this.villains, this.antiHeroes, this.aliens, this.humans});

  Application.fromJson(Map<String, dynamic> json) {
    if (json['heroes'] != null) {
      heroes = new List<Character>();
      json['heroes'].forEach((v) {
        heroes.add(new Character.fromJson(v));
      });
    }
    if (json['villains'] != null) {
      villains = new List<Character>();
      json['villains'].forEach((v) {
        villains.add(new Character.fromJson(v));
      });
    }
    if (json['antiHeroes'] != null) {
      antiHeroes = new List<Character>();
      json['antiHeroes'].forEach((v) {
        antiHeroes.add(new Character.fromJson(v));
      });
    }
    if (json['aliens'] != null) {
      aliens = new List<Character>();
      json['aliens'].forEach((v) {
        aliens.add(new Character.fromJson(v));
      });
    }
    if (json['humans'] != null) {
      humans = new List<Character>();
      json['humans'].forEach((v) {
        humans.add(new Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.heroes != null) {
      data['heroes'] = this.heroes.map((v) => v.toJson()).toList();
    }
    if (this.villains != null) {
      data['villains'] = this.villains.map((v) => v.toJson()).toList();
    }
    if (this.antiHeroes != null) {
      data['antiHeroes'] = this.antiHeroes.map((v) => v.toJson()).toList();
    }
    if (this.aliens != null) {
      data['aliens'] = this.aliens.map((v) => v.toJson()).toList();
    }
    if (this.humans != null) {
      data['humans'] = this.humans.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
