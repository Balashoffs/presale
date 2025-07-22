
import 'package:presale/src/presentation/bloc/core/core/bloc_mixin.dart';
import 'package:presale/src/presentation/bloc/core/core/repository_state.dart';

class UserRepository extends Repository<bool> with StateMixin{
  String? fromPath;

  UserRepository(
  ) : super(const UninitializedState());

  void login() {
    emit(SuccessState(true));
  }

  void logOut() {
    emit(const UninitializedState());
  }
}
