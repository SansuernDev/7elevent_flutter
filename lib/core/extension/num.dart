extension ReportNumeric on num {
  String toReportNumeric({int decimalCount = 2, String? unit, String? millionUnit}) {
    if (this < 1000000000) {
      if (this == toInt() && decimalCount != 0) {
        return "${'${toInt()}'.replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}${unit != null ? ' $unit' : ''}";
      } else {
        return "${toStringAsFixed(decimalCount).replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}${unit != null ? ' $unit' : ''}";
      }
    } else {
      double millions = this / 1000000;
      if (millions >= 1000000) {
        return "999,999${millionUnit != null ? ' $millionUnit' : ''}";
      } else {
        String formattedMillions = millions.toStringAsFixed(6).split('.')[0]; // Keep only the integer part without rounding
        return "${formattedMillions.replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}${millionUnit != null ? ' $millionUnit' : ''}";
      }
    }
  }
}