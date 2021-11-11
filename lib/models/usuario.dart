
class Usuario {
  int id = -1;
  String nombre = "";
  int edad = -1;
  String email = "";

  Usuario(
    {this.id = -1, 
      this.nombre = "", 
      this.edad = -1, 
      this.email = ""}
  );

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    edad = json['edad'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['edad'] = this.edad;
    data['email'] = this.email;
    return data;
  }
}