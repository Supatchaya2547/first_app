
class User {
  final int id;
  final String name;
  final String username;
  final String email;

  // Constructor
  User(this.id, this.name, this.username, this.email);
  
  // แปลง JSON เป็น Object
  User.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      username = json['username'],
      email = json['email'];
  
  // แปลง Object เป็น JSON Map
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'username': username, 'email': email};
  }
}


// // Model Class
// class User {
//   final int aqi;
//   final String city;
//   final double temperature;

//   // Constructor
//   User(this.aqi, this.city, this.temperature);
  
// // แปลง JSON เป็น Object
//   User.fromJson(Map<String, dynamic> json)
//       : aqi = json['data']['aqi'], // ค่า AQI อยู่ใน data
//         city = json['data']['city']['name'], // ชื่อเมืองอยู่ใน data -> city -> name
//         temperature = (json['data']['iaqi']['t']['v'] as num).toDouble(); // อุณหภูมิอยู่ใน iaqi -> t -> v
  
//   // แปลง Object เป็น JSON Map
//   Map<String, dynamic> toJson() {
//     return {'aqi': aqi, 'city': city, 'temperature': temperature};
//   }
// }