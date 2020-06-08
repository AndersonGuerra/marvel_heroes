class Character {
  String name;
  String alterEgo;
  String imagePath;
  String biography;
  Caracteristics caracteristics;
  Abilities abilities;
  List<String> movies;

  Character(
      {this.name,
      this.alterEgo,
      this.imagePath,
      this.biography,
      this.caracteristics,
      this.abilities,
      this.movies});

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alterEgo = json['alterEgo'];
    imagePath = json['imagePath'];
    biography = json['biography'];
    caracteristics = json['caracteristics'] != null
        ? new Caracteristics.fromJson(json['caracteristics'])
        : null;
    abilities = json['abilities'] != null
        ? new Abilities.fromJson(json['abilities'])
        : null;
    movies = json['movies'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['alterEgo'] = this.alterEgo;
    data['imagePath'] = this.imagePath;
    data['biography'] = this.biography;
    if (this.caracteristics != null) {
      data['caracteristics'] = this.caracteristics.toJson();
    }
    if (this.abilities != null) {
      data['abilities'] = this.abilities.toJson();
    }
    data['movies'] = this.movies;
    return data;
  }
}

class Caracteristics {
  String birth;
  Weight weight;
  Height height;
  String universe;

  Caracteristics({this.birth, this.weight, this.height, this.universe});

  Caracteristics.fromJson(Map<String, dynamic> json) {
    birth = json['birth'];
    weight =
        json['weight'] != null ? new Weight.fromJson(json['weight']) : null;
    height =
        json['height'] != null ? new Height.fromJson(json['height']) : null;
    universe = json['universe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birth'] = this.birth;
    if (this.weight != null) {
      data['weight'] = this.weight.toJson();
    }
    if (this.height != null) {
      data['height'] = this.height.toJson();
    }
    data['universe'] = this.universe;
    return data;
  }
}

class Weight {
  int value;
  String unity;

  Weight({this.value, this.unity});

  Weight.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unity = json['unity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['unity'] = this.unity;
    return data;
  }
}

class Height {
  double value;
  String unity;

  Height({this.value, this.unity});

  Height.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unity = json['unity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['unity'] = this.unity;
    return data;
  }
}

class Abilities {
  int force;
  int intelligence;
  int agility;
  int endurance;
  int velocity;

  Abilities(
      {this.force,
      this.intelligence,
      this.agility,
      this.endurance,
      this.velocity});

  Abilities.fromJson(Map<String, dynamic> json) {
    force = json['force'];
    intelligence = json['intelligence'];
    agility = json['agility'];
    endurance = json['endurance'];
    velocity = json['velocity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['force'] = this.force;
    data['intelligence'] = this.intelligence;
    data['agility'] = this.agility;
    data['endurance'] = this.endurance;
    data['velocity'] = this.velocity;
    return data;
  }
}