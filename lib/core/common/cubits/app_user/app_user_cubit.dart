import 'package:blog_app/core/utils/token_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  final TokenManager _tokenManager;

  AppUserCubit(this._tokenManager) : super(AppUserInitial()) {
    _checkToken();
  }

  void _checkToken() async {
    final token = await _tokenManager.getToken();
    if (token != null) {
      // Jika token ditemukan, user dianggap sudah login
      emit(AppUserLoggedIn());
    } else {
      // Jika token tidak ditemukan, user dianggap belum login
      emit(AppUserInitial());
    }
  }

  void updateUser() {
    _checkToken();
  }
}
