enum Period {
  weekly,
  monthly,
  yearly;

  String get getTitle {
    return switch (this) { weekly => "THIS WEEK", monthly => "THIS MONTH", yearly => "THIS YEAR" };
  }


  String get getName {
    return switch (this) { weekly => "สัปดาห์นี้", monthly => "เดือนนี้", yearly => "ปีนี้" };
  }
}
