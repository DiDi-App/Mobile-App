import 'package:didi/src/core/common/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(AppUserInitial());

  void userLoggedIn(UserEntity user) {
    emit(AppUserLoggedIn(user: user));
  }

  void userLoggedOut() {
    emit(AppUserInitial());
  }
}
