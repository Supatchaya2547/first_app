import 'package:flutter/material.dart';

class FormExample1 extends StatefulWidget {
  const FormExample1({super.key});

  @override
  State<FormExample1> createState() => _FormExample1State();
}

class _FormExample1State extends State<FormExample1> {
  String fullName = "";
  String email = "";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  String? selectedProvince;
  bool isAccept = false;
  String? gender = '';
  bool isReceiveNews = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FormExample')),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            // First name
            TextFormField(
              //obscureText: true, // ซ้อนข้อความ จะแสดงเป็น ...... หรือเก็บรหัสผ่าน
              controller: fullNameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
              onChanged: (value) {
                // บันทึกค่าทุกครั้งที่มีการเปลี่ยนแปลง ตอนพิมพ์
                setState(() {
                  fullName = value;
                });
                //print('name value : $value');
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Full Name";
                }
                return null;
              },
            ),

            // Last name
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                // บันทึกค่าทุกครั้งที่มีการเปลี่ยนแปลง ตอนพิมพ์
                setState(() {
                  email = value;
                });
                //print('lastname value : $value')
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your Email";
                }
                return null;
              },
            ),
            SizedBox(height: 20),

            // Radio
            SizedBox(height: 20),
            Column(
              children: [
                // ผู้ชาย
                RadioListTile(
                  title: Text('Male'),
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (String? value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                // ผู้หญิง
                RadioListTile(
                  title: Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (String? value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ],
            ),

            // Dropdown
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: 'Province'),
              value: selectedProvince,
              items: ['Bangkok', 'Chiang Mai', 'Phuket', 'Khon Kaen']
                  .map(
                    (String item) =>
                        DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedProvince = value;
                });
              },
              validator: (String? value) {
                if (value == null) {
                  return 'Pleasen select Province';
                }
                return null;
              },
            ),
            // CheckBox
            CheckboxListTile(
              title: const Text("Accept Term & Conditions"),
              value: isAccept,
              onChanged: (bool? value) {
                setState(() {
                  isAccept = value!;
                });
              },
            ),

            // ปุ่ม
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Submit
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Success Form');
                      print(('Full Name : ${fullNameController.text}'));
                      print(('Email : ${emailController.text}'));
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
