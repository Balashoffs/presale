part of 'object_input_data_cubit.dart';

sealed class ObjectDataState extends Equatable {
  const ObjectDataState();
}

final class InitialState extends ObjectDataState {
  List<Object> get props => [];
}

final class LoadedState extends ObjectDataState {
  final InputFactorsViewModel model;

  const LoadedState({required this.model});

  @override
  List<Object> get props => [model];
}

final class SavedState extends ObjectDataState {
  final String id;

  List<Object> get props => [];

  const SavedState({
    required this.id,
  });
}

final class ErrorState extends ObjectDataState {
  final String errorText;

  const ErrorState({required this.errorText});

  List<Object> get props => [errorText];
}

