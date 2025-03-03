import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sevent_elevent/core/routes.dart';

enum Responsive {
  phone,
  ipad,
  noteBook,
  macBook;
}

bool isMacbook = 1.sw >= 1400; // MacBook หรือ Laptop ขนาดใหญ่

double responsiveSize({
  required double Function() onSmaller,
  required double Function() onSmall,
  required double Function() onBigger,
  required double Function() onBiggest,
  required BuildContext context,
}) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth > 1200 && screenWidth < 1400) {
    return onSmaller.call();
  }

  if (screenWidth > 1400 && screenWidth < 1600) {
    return onSmall.call();
  }

  if (screenWidth > 1600 && screenWidth < 1800) {
    return onBigger.call();
  }

  if (screenWidth > 1800) {
    return onBiggest.call();
  }

  return onSmaller.call();
}
