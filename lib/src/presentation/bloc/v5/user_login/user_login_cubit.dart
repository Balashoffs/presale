import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/presentation/modules/v5/user_login/user_login_page_controller.dart';

part 'user_login_state.dart';

part 'user_login_cubit.freezed.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  final UserLoginTextGroupController textGroupController;

  UserLoginCubit()
    : textGroupController = UserLoginTextGroupController(),
      super(const UserLoginState.initial());

  void onFirstNameChange(String name) {}

  void onSecondNameChange(String value) {}

  void onLastNameChange(String value) {}

  void onJobTitleChange(String value) {}

  void onCompanyTitleChange(String value) {}

  void onPhoneNumberChange(String value) {}

  void onJobEmailChange(String value) {}
}
