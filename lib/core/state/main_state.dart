import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/type/main_type.dart';

part 'main_state.g.dart';

@riverpod
class TopMemberPointState extends _$TopMemberPointState {
  @override
  Future<TopMember> build() async {
    Period period =  ref.watch(topMemberSelectPeriodStateProvider);
    final response = await ref.read(mainDataSourceProvider).getTopPointMembers(period: period);
    return TopMember.fromJson(response);
  }
}

@riverpod
class TopMemberSelectPeriodState extends _$TopMemberSelectPeriodState {
  @override
  Period build() {
    return Period.weekly;
  }

  update(Period value) {
    state = value;
  }
}
