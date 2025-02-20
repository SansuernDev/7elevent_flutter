import 'dart:convert';
import 'dart:io';

class IMemberPayload {
  final String username;
  final String password; // Hash แล้ว
  final String name;
  final File image;

  IMemberPayload({
    required this.username,
    required this.password,
    required this.name,
    required this.image,
  });

  // ✅ Convert Model เป็น JSON
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'name': name,
      'image': base64Encode(image.readAsBytesSync()), // แปลงรูปเป็น Base64
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
