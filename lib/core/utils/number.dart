import 'package:intl/intl.dart';

String formatNumberToPrice(num number, {bool setMaximum = false}) {
  String result;
  if (setMaximum) {
    if (number > 100000000) {
      return '99.99 ล้าน';
    }
    if (number > 999999) {
      final modifiedNum = num.parse((number / 1000000).toStringAsFixed(2));
      if (modifiedNum % 1 == 0) {
        return "${NumberFormat.decimalPattern().format(modifiedNum)} ล้าน";
      } else {
        return '${NumberFormat.currency(decimalDigits: 2, symbol: '').format(modifiedNum)} ล้าน';
      }
    }
  }
  if (number % 1 == 0) {
    result = NumberFormat.decimalPattern().format(number);
  } else {
    result = NumberFormat.currency(decimalDigits: 2, symbol: '').format(number);
  }

  return result;
}

int? discountPercent(num originalPrice, num currentPrice) {
  return (originalPrice > 0 && originalPrice > currentPrice) ? ((1 - (currentPrice / originalPrice)) * 100).round().clamp(1, 99) : null;
}

String shortenString(String price) {
  if (price.length > 9) {
    return '${price.substring(0, 9)}..';
  } else {
    return price;
  }
}
