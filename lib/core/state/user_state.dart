





import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/share_prefs.dart';

part 'user_state.g.dart';

@Riverpod(keepAlive: true)
class UserState extends _$UserState {
  @override
  Future<UserModel?> build() async {
    final UserModel? data = SharedPrefs().getTokenData;
    final res = await ref.watch(mainDataSourceProvider).getMemberById(memberId: data?.memberId ?? "");
    return UserModel.fromJson(res);
  }

  void setUser(UserModel user) {
    state = AsyncData(user);
  }
}
