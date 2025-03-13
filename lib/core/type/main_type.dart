import 'package:freezed_annotation/freezed_annotation.dart';

enum Period {
  all,
  weekly,
  monthly,
  yearly;

  String get getTitle {
    return switch (this) { all => "ALL", weekly => "THIS WEEK", monthly => "THIS MONTH", yearly => "THIS YEAR" };
  }

  String get getName {
    return switch (this) { all => "ทั้งหมด", weekly => "สัปดาห์นี้", monthly => "เดือนนี้", yearly => "ปีนี้" };
  }
}

enum RoleType {
  @JsonValue("MANAGER")
  manager,
  @JsonValue("GUEST")
  guest;

  String get getName {
    return switch (this) { manager => "ผู้จัดการ", guest => "ผู้เยี่ยมชม",};
  }
}
