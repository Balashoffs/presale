import 'dart:collection';

import 'package:flutter/material.dart';

final class DivisionWithResourceRowVM {
  final int id;

  //Имя раздела
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final ValueNotifier<String> resourceNameVN;

  // Кол-во задействованных должностей
  int _resourceQnt = 0;

  int get resourceQnt => _resourceQnt; // Ставка в день
  set resourceQnt(int value) {
    _resourceQnt = value;
  }

  // Кол-во задействованных дней
  int _workDays = 0;

  int get workDays => _workDays;

  set workDays(int value) {
    _workDays = value;
  }

  // Коэфициент сложности

  double _complexFactor = 1.0;

  double get complexFactor => _complexFactor;

  set complexFactor(double value) {
    _complexFactor = value;
  }

  // Коэфициент по площади
  double _squareFactor;

  double get squareFactor => _squareFactor;

  set squareFactor(double value) {
    _squareFactor = value;
  }

  // Коэфициент участия
  double _resourceUsingFactor = 1.0;

  double get resourceUsingFactor => _resourceUsingFactor;

  set resourceUsingFactor(double value) {
    _resourceUsingFactor = value;
  }

  //Ставка специалиста в день
  final ValueNotifier<double> resourceCostPerDayVN;

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> totalResourceRowCostVN;

  DivisionWithResourceRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required String resourceName,
    required double resourceCostPerDay,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    double totalResourceRowCost = 0.0,
  }) : _resourceQnt = resourceQnt,
       resourceNameVN = ValueNotifier(resourceName),
       resourceCostPerDayVN = ValueNotifier(resourceCostPerDay),
       totalResourceRowCostVN = ValueNotifier(totalResourceRowCost),
       _workDays = workDays,
       _complexFactor = complexFactor,
       _squareFactor = squareFactor,
       _resourceUsingFactor = resourceUsingFactor;

  DivisionWithResourceRowVM copyWithClear({
    String? divisionName,
    String? divisionShortName,
    String? resourceName,
    int? workDays,
    double? complexFactor,
    double? squareFactor,
    double? resourceUsingFactor,
    double? resourceCostPerDay,}) {
    return DivisionWithResourceRowVM(
      id: DateTime.now().microsecondsSinceEpoch,
      divisionName: divisionName ?? this.divisionName,
      divisionShortName: divisionShortName ?? this.divisionShortName,
      resourceName: '',
      resourceQnt: 0,
      workDays:  0,
      complexFactor: 0.0,
      squareFactor: 0.0,
      resourceUsingFactor:  0.0,
      resourceCostPerDay:  0.0,
    );
  }
}
