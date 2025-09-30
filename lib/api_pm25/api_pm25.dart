import 'dart:convert';

import 'package:first_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPm25 extends StatefulWidget {
  const ApiPm25({super.key});

  @override
  State<ApiPm25> createState() => _ApiPm25State();
}

class _ApiPm25State extends State<ApiPm25> {
  User? userData;

  @override
  void initState() {
    // TODO: implement initState
    fetchUser();
  }

  // ฟังก์ชันเลือกสีตามค่า AQI
  Color getAqiColor(int aqi) {
    if (aqi <= 50) {
      return Colors.green; // Good
    } else if (aqi <= 100) {
      return Colors.yellow; // Moderate
    } else if (aqi <= 150) {
      return Colors.orange; // Unhealthy for Sensitive Groups
    } else if (aqi <= 200) {
      return Colors.red; // Unhealthy
    } else if (aqi <= 300) {
      return Colors.purple; // Very Unhealthy
    } else {
      return Colors.brown; // Hazardous
    }
  }

  String getAqiStatus(int aqi) {
    if (aqi <= 50) {
      return "Good";
    } else if (aqi <= 100) {
      return "Moderate";
    } else if (aqi <= 150) {
      return "Unhealthy for Sensitive Groups";
    } else if (aqi <= 200) {
      return "Unhealthy";
    } else if (aqi <= 300) {
      return "Very Unhealthy";
    } else {
      return "Hazardous";
    }
  }

  void fetchUser() async {
    try {
      var response = await http.get(
        Uri.parse(
          'https://api.waqi.info/feed/here/?token=50458fd1f825c64273a4d450bc52c4f5e1cbb1f9',
        ),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        User user = User.fromJson(data);
        setState(() {
          userData = user;
        });
        print('City: ${user.city}');
        print('AQI: ${user.aqi}');

        print('Temperature: ${user.temperature} °C');
      } else {
        print('Failed to fetch data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Air Quality Index (AQI)')),
      body: Center(
        child: userData == null
            ? const CircularProgressIndicator() // แสดงวงกลมโหลด
            : Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ชื่อเมือง
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 28,
                      ),
                      const SizedBox(
                        width: 8,
                      ), // เว้นระยะห่างระหว่างไอคอนกับข้อความ
                      Text(
                        '${userData!.city}',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // Container แสดงค่าฝุ่นพร้อมสี
                  SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: getAqiColor(userData!.aqi),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // สีเงา
                          blurRadius: 8, // ความฟุ้งของเงา
                          offset: const Offset(3, 4), // ระยะเงา (x, y)
                        ),
                      ],
                    ),
                    child: Text(
                      'AQI: ${userData!.aqi}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),

                  // สถานะคุณภาพอากาศ
                  SizedBox(
                    height: 15,
                  ),
                  
                  SizedBox(height: 15),
                  Text(
                    'Air Quality',
                    style: TextStyle(fontSize: 13),
                  ),

                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    getAqiStatus(userData!.aqi),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  // อุณหภูมิ
                  SizedBox(height: 20),
                  Text(
                    'Temperature:  ${userData!.temperature} °C',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
      ),
    );
  }
}
