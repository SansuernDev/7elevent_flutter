import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sevent_elevent/core/routes.dart';

enum Responsive {
  phone,
  ipad,
  noteBook,
  macBook;
}



bool isMacbook = 1.sh >= 700; // MacBook หรือ Laptop ขนาดใหญ่
