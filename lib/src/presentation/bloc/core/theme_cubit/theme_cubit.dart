import 'package:presale/src/di/di.dart';
import 'package:presale/src/presentation/bloc/core/theme_cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    ThemeState? initialState,
  }) : super(initialState ?? const ThemeState());

  void themeLoad() async {
    ThemeMode mode = await di.themeService.getThemeMode();
    emit(state.copyWith(
      themeMode: mode,
    ));
  }

  void themeChanged(ThemeMode themeMode) async {
    di.themeService.setThemeMode(themeMode);
    emit(state.copyWith(
      themeMode: themeMode,
    ));
  }
}
