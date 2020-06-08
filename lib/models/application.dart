import 'heroes.dart';
import 'villains.dart';
import 'aliens.dart';
import 'antiheroes.dart';
import 'humans.dart';

class Application {
  List<Heroes> heroes;
  List<Villains> villains;
  List<AntiHeroes> antiHeroes;
  List<Aliens> aliens;
  List<Humans> humans;

  Application(
      {this.heroes, this.villains, this.antiHeroes, this.aliens, this.humans});

  Application.fromJson(Map<String, dynamic> json) {
    if (json['heroes'] != null) {
      heroes = new List<Heroes>();
      json['heroes'].forEach((v) {
        heroes.add(new Heroes.fromJson(v));
      });
    }
    if (json['villains'] != null) {
      villains = new List<Villains>();
      json['villains'].forEach((v) {
        villains.add(new Villains.fromJson(v));
      });
    }
    if (json['antiHeroes'] != null) {
      antiHeroes = new List<AntiHeroes>();
      json['antiHeroes'].forEach((v) {
        antiHeroes.add(new AntiHeroes.fromJson(v));
      });
    }
    if (json['aliens'] != null) {
      aliens = new List<Aliens>();
      json['aliens'].forEach((v) {
        aliens.add(new Aliens.fromJson(v));
      });
    }
    if (json['humans'] != null) {
      humans = new List<Humans>();
      json['humans'].forEach((v) {
        humans.add(new Humans.fromJson(v));
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
