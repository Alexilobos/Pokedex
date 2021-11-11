
class Pokemon {
  int id = -1;
  String nombre = "";
  String type1 = "";
  String type2 = "";
  int total = -1;
  int hp = -1;
  int ataque = -1;
  int defensa = -1;
  int spAtaque = -1;
  int spDefensa = -1;
  int velocidad = -1;
  int generacion = -1;
  bool legendario = false;

  Pokemon(
    {this.id = -1,
      this.nombre = "",
      this.type1 = "",
      this.type2 = "",
      this.total = -1,
      this.hp = -1,
      this.ataque = -1,
      this.defensa = -1,
      this.spAtaque = -1,
      this.spDefensa = -1,
      this.velocidad = -1,
      this.generacion = -1,
      this.legendario = false}
  );

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    type1 = json['type1'];
    type2 = json['type2'];
    total = json['total'];
    hp = json['hp'];
    ataque = json['ataque'];
    defensa = json['defensa'];
    spAtaque = json['spAtaque'];
    spDefensa = json['spDefensa'];
    velocidad = json['velocidad'];
    generacion = json['generacion'];
    legendario = json['legendario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['type1'] = this.type1;
    data['type2'] = this.type2;
    data['total'] = this.total;
    data['hp'] = this.hp;
    data['ataque'] = this.ataque;
    data['defensa'] = this.defensa;
    data['spAtaque'] = this.spAtaque;
    data['spDefensa'] = this.spDefensa;
    data['velocidad'] = this.velocidad;
    data['generacion'] = this.generacion;
    data['legendario'] = this.legendario;
    return data;
  }
}
