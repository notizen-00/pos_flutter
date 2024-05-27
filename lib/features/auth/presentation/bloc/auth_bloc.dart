import 'package:blog_app/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/usecases/current_user.dart';
import 'package:blog_app/features/auth/domain/usecases/user_login.dart';
import 'package:blog_app/features/auth/domain/usecases/user_logout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserLogin _userLogin;
  final CurrentUser _currentUser;
  final AppUserCubit _appUserCubit;
  final UserLogout _userLogout;
  AuthBloc({
    required UserLogin userLogin,
    required CurrentUser currentUser,
    required AppUserCubit appUserCubit,
    required UserLogout userLogout
  })  : _userLogin = userLogin,
        _currentUser = currentUser,
        _appUserCubit = appUserCubit,
        _userLogout = userLogout,
        super(AuthInitial()) {
    on<AuthEvent>((_, emit) => emit(AuthLoading()));
    on<AuthLogin>(_onAuthLogin);
    on<AuthIsUserLoggedIn>(_isUserLoggedIn);
    on<AuthLogout>(_onAuthLogout);
  }

  void _isUserLoggedIn(
    AuthIsUserLoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _currentUser(NoParams());

    res.fold(
      (l) => emit(AuthFailure(l.message)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }



  void _onAuthLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    final res = await _userLogin(
      UserLoginParams(
        email: event.email,
        password: event.password,
      ),
    );

    res.fold(
      (l) => emit(AuthFailure(l.message)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  void _emitAuthSuccess(
    User user,
    Emitter<AuthState> emit,
  ) {
    _appUserCubit.updateUser();
    emit(AuthSuccess(user));
  }

    void _emitAuthLogoutSuccess(
    User user,
    Emitter<AuthState> emit,
  ) {
    _appUserCubit.updateUser();
    emit(AuthLogoutSuccess(user));
  }

  void _onAuthLogout(
    AuthLogout event,
    Emitter<AuthState> emit,
  ) async {
    // Reset state to initial state
    final res = await _userLogout(NoParams());
    res.fold(
      (l)=>emit(AuthFailure(l.message)),
      (r)=> _emitAuthLogoutSuccess(r,emit),
    );
    emit(AuthInitial());
  }
}



