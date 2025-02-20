





import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/share_prefs.dart';

part 'user_state.g.dart';

@Riverpod(keepAlive: true)
class UserState extends _$UserState {
  @override
  UserModel? build() {
    //TODO:get recent user
    // ref.listenSelf((previous, next) {
    //   if (next != null) {
    //     ref.read(mainDataSourceProvider).
    //   }
    // },);
    return SharedPrefs().getTokenData;
  }

  void setUser(UserModel user) {
    state = user;
  }
}
