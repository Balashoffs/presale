/*
  1. Аббвеатура, например ВК
  2. Наименование стадии, например "Сети водоснабжения"
  3. Ресурс, например Ведущий инженер ВК
  4. Ставка в день
  5. Ставка в месяц
 */

class DivisionResourceDTO{
  final String divisionName;
  final String divisionShortName;
  final String resourceName;
  final String resourceCostPerDay;
  final String resourceCostPerMounth;

  const DivisionResourceDTO({
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
    required this.resourceCostPerMounth,
  });
}