import 'package:presale/src/presentation/bloc/core/core/form_stage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    String? password,
    String? formError,
    @Default(FormStage.common) FormStage formStage,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
