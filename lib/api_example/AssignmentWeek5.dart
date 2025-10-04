import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Assignmentweek5 extends StatefulWidget {
  const Assignmentweek5({super.key});

  @override
  State<Assignmentweek5> createState() => _Assignmentweek5State();
}

class _Assignmentweek5State extends State<Assignmentweek5> {
  List<UserProduct> listProduct = [];

  // GET
  Future<void> fetchData() async {
    try {
      var response = await http.get(
        Uri.parse('http://localhost:8001/products'),
      );
      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        setState(() {
          listProduct = jsonList.map((e) => UserProduct.fromJson(e)).toList();
        });
      } else {
        throw Exception("Failed to load products");
      }
    } catch (e) {
      print(e);
    }
  }

  // POST
  // Future<void> createProduct() async {
  //   try {
  //     var response = await http.post(
  //       Uri.parse("http://localhost:8001/products"),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode({
  //       }),
  //     );
  //     if (response.statusCode == 201) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Create success!'),
  //           backgroundColor: Colors.green,
  //         ),
  //       );
  //       fetchData(); // refresh หลังเพิ่ม
  //     } else {
  //       throw Exception("Failed to create product");
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  Future<void> createProduct({
    required String name,
    required String description,
    required double price,
  }) async {
    try {
      var response = await http.post(
        Uri.parse("http://localhost:8001/products"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": name,
          "description": description,
          "price": price,
        }),
      );
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Create success!'),
            backgroundColor: Colors.green,
          ),
        );
        fetchData(); // refresh list
      } else {
        throw Exception("Failed to create product");
      }
    } catch (e) {
      print(e);
    }
  }

  // PUT
  // Future<void> updateProduct({dynamic idUpdate = "5ac6"}) async {
  //   try {
  //     var response = await http.put(
  //       Uri.parse("http://localhost:8001/products/$idUpdate"),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode({
  //       }),
  //     );
  //     if (response.statusCode == 200) {
  //       fetchData();
  //     } else {
  //       throw Exception("Failed to update product");
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> updateProduct({
    required dynamic idUpdate,
    required String name,
    required String description,
    required double price,
  }) async {
    try {
      var response = await http.put(
        Uri.parse("http://localhost:8001/products/$idUpdate"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": name,
          "description": description,
          "price": price,
        }),
      );
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Update success!'),
            backgroundColor: Colors.green,
          ),
        );
        fetchData();
      } else {
        throw Exception("Failed to update product");
      }
    } catch (e) {
      print(e);
    }
  }

  // DELETE
  Future<void> deleteProduct({dynamic idDelete = "b625"}) async {
    try {
      var response = await http.delete(
        Uri.parse("http://localhost:8001/products/$idDelete"),
      );
      if (response.statusCode == 200) {
        fetchData();
      } else {
        throw Exception("Failed to delete product");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assignment Week 5')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: fetchData, child: Text('GET')),
              ElevatedButton(
                onPressed: () {
                  TextEditingController nameController =
                      TextEditingController();
                  TextEditingController descController =
                      TextEditingController();
                  TextEditingController priceController =
                      TextEditingController();

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Create Product"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(labelText: "Name"),
                            ),
                            TextField(
                              controller: descController,
                              decoration: InputDecoration(
                                labelText: "Description",
                              ),
                            ),
                            TextField(
                              controller: priceController,
                              decoration: InputDecoration(labelText: "Price"),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            child: Text("Cancel"),
                            onPressed: () => Navigator.pop(context),
                          ),
                          ElevatedButton(
                            child: Text("Submit"),
                            onPressed: () {
                              createProduct(
                                name: nameController.text,
                                description: descController.text,
                                price:
                                    double.tryParse(priceController.text) ??
                                    0.0,
                              );
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('POST'),
              ),

              //ElevatedButton(onPressed: updateProduct, child: Text('PUT')),
              //ElevatedButton(onPressed: deleteProduct, child: Text('DELETE')),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: listProduct.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Text('${listProduct[index].id}'),
                  title: Text('${listProduct[index].name}'),
                  subtitle: Text(
                    'Description : ${listProduct[index].description}',
                  ),

                  // 👇 เปลี่ยนจาก Text เดี่ยว ๆ เป็น Row
                  trailing: Row(
                    mainAxisSize:
                        MainAxisSize.min, // ให้ Row กว้างเท่าที่จำเป็น
                    children: [
                      Text(
                        'Price : ${listProduct[index].price}',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue),
                        onPressed: () {
                          TextEditingController nameController =
                              TextEditingController(
                                text: listProduct[index].name,
                              );
                          TextEditingController descController =
                              TextEditingController(
                                text: listProduct[index].description,
                              );
                          TextEditingController priceController =
                              TextEditingController(
                                text: listProduct[index].price.toString(),
                              );

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Edit Product"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        labelText: "Name",
                                      ),
                                    ),
                                    TextField(
                                      controller: descController,
                                      decoration: InputDecoration(
                                        labelText: "Description",
                                      ),
                                    ),
                                    TextField(
                                      controller: priceController,
                                      decoration: InputDecoration(
                                        labelText: "Price",
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Cancel"),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  ElevatedButton(
                                    child: Text("Submit"),
                                    onPressed: () {
                                      updateProduct(
                                        idUpdate: listProduct[index].id,
                                        name: nameController.text,
                                        description: descController.text,
                                        price:
                                            double.tryParse(
                                              priceController.text,
                                            ) ??
                                            0.0,
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: const Color.fromARGB(255, 243, 33, 33),
                        ),
                        onPressed: () {
                          // ยืนยันก่อนลบ
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Confirm Delete"),
                                content: Text(
                                  "Are you sure you want to delete ${listProduct[index].name}?",
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Cancel"),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(),
                                    child: Text("Delete"),
                                    onPressed: () {
                                      deleteProduct(
                                        idDelete: listProduct[index].id,
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Model Class
class UserProduct {
  final int id; // บางที id จาก API เป็น string
  final String name;
  final String description;
  final double price;

  UserProduct(this.id, this.name, this.description, this.price);

  UserProduct.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      description = json['description'],
      price = json['price'];
}
