import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

class IMemberPayload {
  final String username;
  final String password; // Hash แล้ว
  final String name;
  final File? image;
  final Uint8List? bytes;

  IMemberPayload({
    required this.username,
    required this.password,
    required this.name,
    this.image,
    this.bytes,
  });

  // ✅ Convert Model เป็น JSON
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'name': name,
      'image': image != null ? base64Encode(image!.readAsBytesSync()) : null, // แปลงรูปเป็น Base64
    };
  }

  // ✅ Convert JSON กลับมาเป็น Object
  factory IMemberPayload.fromJson(Map<String, dynamic> json) {
    return IMemberPayload(
      username: json['username'],
      password: json['password'],
      name: json['name'],
      image: File(json['image']), // สมมติว่ามี Path ของไฟล์
    );
  }
}
