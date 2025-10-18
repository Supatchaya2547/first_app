import 'package:flutter/material.dart';

class CustomWidgetProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String imageUrl;
  const CustomWidgetProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // สีเงา
            spreadRadius: 2, // ความกว้างของเงา
            blurRadius: 7, // ความฟุ้งของเงา
            offset: Offset(0, 3), // ทิศทางเงา (x, y)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          // รูปภาพจากลิ้งค์
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover, // ทำให้รูปเต็มวงกลม
            ),
          ),

          // ชื่อ
          SizedBox(height: 20),
          Text(
            '$name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          // ตำแหน่ง
          SizedBox(height: 20),
          Text('$position', style: TextStyle(fontSize: 12, color: Colors.grey)),
          
          // อีเมล
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 16, color: Colors.blue),
              SizedBox(width: 6),
              Text(email, style: TextStyle(fontSize: 14, color: Colors.black)),
            ],
          ),

          // เบอร์โทร
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, size: 16, color: Colors.green),
              SizedBox(width: 6),
              Text(
                phoneNumber,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
