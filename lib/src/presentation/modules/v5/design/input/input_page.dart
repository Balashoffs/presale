import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/modules/common/text_input_validators.dart';
import 'package:presale/src/presentation/modules/common/custom_moon_drop_down.dart';
import 'package:presale/src/presentation/modules/v5/design/input/widgets/design_input_drop_dowm.dart';
import 'package:presale/src/presentation/modules/v5/design/service_navi.dart';
import 'package:provider/provider.dart';

import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v5/design/division_type/division_type.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_toast_widget.dart';
import 'package:presale/src/presentation/modules/common/custom_text_input.dart';
import 'package:presale/src/presentation/common/widget/text_divider.dart';
import 'package:presale/src/presentation/common/color_options.dart';

import 'package:presale/src/presentation/bloc/v5/design/input/object_input_data/object_input_data_cubit.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_repository.dart';

class InputDataPage extends StatelessWidget {
  const InputDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ObjectInputDataBlocBuilderWidget());
  }
}

class ObjectInputDataBlocBuilderWidget extends StatelessWidget {
  const ObjectInputDataBlocBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ObjectDataCubit(di.dbClientImpl)..init(),
      child: ObjectInputDataConsumerWidget(),
    );
  }
}

class ObjectInputDataConsumerWidget extends StatelessWidget {
  const ObjectInputDataConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ObjectDataCubit, ObjectInputDataState>(
      listener: (context, state) {
        state.whenOrNull(
          nextPage: () => context.go(designResourcesGoRouterPath),
        );
      },
      builder: (context, state) {
        return state.whenOrNull(
              initial: () => CustomCircleLoader(),
              enterInputData: (factors) => LoadedWidget(factors: factors),
            ) ??
            SizedBox();
      },
    );
  }
}

class LoadedWidget extends StatelessWidget {
  const LoadedWidget({super.key, required this.factors});

  final InputFactorsViewModel factors;

  @override
  Widget build(BuildContext context) {
    ObjectDataCubit cubit = context.read<ObjectDataCubit>();
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Form(
        child: Builder(
          builder: (context) {
            return ListView(
              shrinkWrap: true,
              primary: true,
              children: [
                CustomTextInput(
                  hintText: 'Наименование объекта',
                  onChanged: cubit.setObjectName,
                  trailing: MoonIcons.controls_close_small_24_light,
                  validator: objectNameValidator,
                  autofocus: true,
                ),
                CustomTextAreaInput(
                  hintText: 'Адрес объекта',
                  onChanged: cubit.setObjectLocation,
                  trailing: MoonIcons.controls_close_small_24_light,
                  validator: objectLocationValidator,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChangeNotifierProvider(
                      create: (context) => StringNotifierDropDown(
                        inputData: DivisionType.values
                            .map((e) => e.text)
                            .toList(),
                      ),
                      child: CustomMoonDropDownWithNotifier(
                        validator: dropDownValidator,
                        initText: 'Нажмите для выбора',
                        onSelected: cubit.setResultDesignDocumentations,
                        helperText: 'Виды проектной документации',
                        leadingIcon: MoonIcons.text_bullets_list_16_light,
                        width: 264,
                      ),
                    ),
                    CustomTextInput(
                      initValue: '0',
                      width: 264,
                      onChanged: cubit.setSquare,
                      leading: Icons.square_outlined,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyIntValidator,
                      helperText: 'Площадь объекта, м2',
                    ),
                    CustomTextInput(
                      initValue: '0',
                      width: 264,
                      onChanged: cubit.setDeadline,
                      leading: Icons.timer,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyIntValidator,
                      helperText: 'Сроки выполнения, дн.',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                const TextDivider(
                  text: "Базовые кооэфициенты",
                  paddingTop: 8,
                  paddingBottom: 16,
                ),
                Row(
                  spacing: 16.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextInput(
                      initValue: '1.2',
                      width: 256,
                      onChanged: cubit.setMarginFactor,
                      leading: Icons.money,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helperText: 'Норма прибыли',
                    ),
                    CustomTextInput(
                      initValue: '0.8',
                      width: 256,
                      onChanged: cubit.setOverPriceFactor,
                      leading: Icons.money_off,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helperText: 'Накладные расходы',
                    ),
                    CustomTextInput(
                      initValue: '1.0',
                      width: 256,
                      onChanged: cubit.setCustomerFactor,
                      leading: Icons.person,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helperText: 'Заказчик',
                    ),
                  ],
                ),
                Opacity(
                  opacity: 0.3,
                  child: AbsorbPointer(
                    absorbing: true,
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        const TextDivider(
                          text: "Базовые кооэфициенты",
                          paddingTop: 8,
                          paddingBottom: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8.0,
                          children: [
                            Column(
                              children: [
                                ChangeNotifierProvider(
                                  create: (context) =>
                                      SingleObjectValueNotifierDropDown(
                                        baseFactors: factors.factorsByType(
                                          InputFactorType.b.value,
                                        ),
                                      ),
                                  child: InputFactorMoonDropDown(
                                    onSelected: cubit.setHeightFactor,
                                    helperText: InputFactorType.b.value,
                                    leadingIcon: MoonIcons.arrows_left_curved_24_light,
                                  ),
                                ),
                                ChangeNotifierProvider(
                                  create: (context) => MultiObjectValueNotifierDropDown(
                                    inputData: factors.complexities,
                                  ),
                                  child: InputFactorMultiCustomMoonDropDown(
                                    initText: "Доп. сложность",
                                    onSelected: cubit.setComplexityFactor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ChangeNotifierProvider(
                                  create: (context) =>
                                      SingleObjectValueNotifierDropDown(
                                        baseFactors: factors.factorsByType(
                                          InputFactorType.c.value,
                                        ),
                                      ),
                                  child: InputFactorMoonDropDown(
                                    onSelected: cubit.setLocationFactor,
                                    helperText: InputFactorType.c.value,
                                    leadingIcon: MoonIcons.arrows_left_curved_24_light,
                                  ),
                                ),
                                ChangeNotifierProvider(
                                  create: (context) =>
                                      SingleObjectValueNotifierDropDown(
                                        baseFactors: factors.factorsByType(
                                          InputFactorType.d.value,
                                        ),
                                      ),
                                  child: InputFactorMoonDropDown(
                                    onSelected: cubit.setSquareFactor,
                                    helperText: InputFactorType.d.value,
                                    leadingIcon: MoonIcons.arrows_left_curved_24_light,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Center(
                    child: MoonOutlinedButton(
                      width: 256,
                      onTap: () {
                        Form.of(context).validate()
                            ? cubit.nextPage()
                            : showToast(context, 'Не все поля заполнены!');
                      },
                      buttonSize: MoonButtonSize.md,
                      isFullWidth: false,
                      showPulseEffect: true,
                      borderColor: colorTable(context)[40],
                      trailing: Icon(MoonIcons.arrows_right_32_regular),
                      label: Text('Далее'),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
