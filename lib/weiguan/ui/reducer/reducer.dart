import '../../container.dart';
import '../ui.dart';
import 'account.dart';
import 'post.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ResetAction) {
    return WgContainer().appState;
  } else {
    return state.copyWith(
      account: accountReducer(state.account, action),
      post: postReducer(state.post, action),
    );
  }
}