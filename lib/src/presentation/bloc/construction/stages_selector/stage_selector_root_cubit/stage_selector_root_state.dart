part of 'stage_selector_root_cubit.dart';

abstract class StageSelectorRootState extends Equatable {
  const StageSelectorRootState();
}

final class InitialState extends StageSelectorRootState {
  @override
  List<Object> get props => [];
}

final class LoadedState extends StageSelectorRootState {

  const LoadedState();

  @override
  List<Object> get props => [];
}

final class NextPageState extends StageSelectorRootState {
  final String id;

  @override
  List<Object> get props => [id];

  const NextPageState({
    required this.id,
  });
}

final class ErrorState extends StageSelectorRootState {
  final String errorText;

  const ErrorState({required this.errorText});

  @override
  List<Object> get props => [errorText];
}
