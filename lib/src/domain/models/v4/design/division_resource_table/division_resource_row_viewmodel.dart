
import 'dart:collection';

import 'package:flutter/foundation.dart';

final class DivisionResourceRowVM extends LinkedListEntry<DivisionResourceRowVM> {
  final int id;

  //Имя раздела
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

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
  final double resourceCostPerDay;

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> totalResourceRowCostVN;
  DivisionResourceRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    double totalResourceRowCost = 0.0,
  }) : _resourceQnt = resourceQnt,
       totalResourceRowCostVN = ValueNotifier(totalResourceRowCost),
       _workDays = workDays,
       _complexFactor = complexFactor,
       _squareFactor = squareFactor,
       _resourceUsingFactor = resourceUsingFactor;

  DivisionResourceRowVM copyWith({
    int? id,
    String? divisionName,
    String? divisionShortName,
    String? resourceName,
    int? resourceQnt,
    int? workDays,
    double? complexFactor,
    double? squareFactor,
    double? resourceUsingFactor,
    double? resourceCostPerDay,
    double? totalResourceRowCost,
  }) {
    return DivisionResourceRowVM(
      id: id ?? this.id,
      divisionName: divisionName ?? this.divisionName,
      divisionShortName: divisionShortName ?? this.divisionShortName,
      resourceName: resourceName ?? this.resourceName,
      resourceQnt: resourceQnt ?? this._resourceQnt,
      workDays: workDays ?? this._workDays,
      complexFactor: complexFactor ?? this._complexFactor,
      squareFactor: squareFactor ?? this._squareFactor,
      resourceUsingFactor: resourceUsingFactor ?? this._resourceUsingFactor,
      resourceCostPerDay: resourceCostPerDay ?? this.resourceCostPerDay,
    )..totalResourceRowCostVN.value = totalResourceRowCost ?? 0.0;
  }
}
