import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/modules/v5/design/navi/service_navi.dart';
import 'package:provider/provider.dart';

import 'package:presale/src/di/di.dart';
import 'package:presale/src/presentation/common/widget/text_divider.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_repository.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';

import 'package:presale/src/presentation/bloc/v3/design/input/object_input_data/object_input_data_cubit.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_app_bar.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_toast_widget.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/providers/custom_dropdwon_vn.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/widget/custon_text_input.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/widget/text_input_validators.dart';
import 'package:presale/src/presentation/modules/v3/design/navi/service_navi.dart';


import 'widget/widget.dart';

class InputDataPage extends StatelessWidget {
  const InputDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Расчет стадий проектирования',
      pathToRootRoute: '/',
      child: ObjectInputDataBlocBuilderWidget(),
    );
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
          nextPage: (type) =>
              context.go('/$inputDataRoutePath/$divisionResourceCalculateRoutePath'),
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChangeNotifierProvider(
                      create: (context) => StringNotifierDropDown(
                        inputData: DivisionType.values
                            .map((e) => e.shortText)
                            .toList(),
                      ),
                      child: CustomMoonDropDown(
                        onSelected: cubit.setResultDesignDocumentations,
                        helperText: 'Виды проектной документации',
                        leadingIcon: MoonIcons.arrows_left_curved_24_light,
                        width: 128,
                      ),
                    ),
                    CustomTextInput(
                      width: 256,
                      hintText: '1000',
                      onChanged: cubit.setSquare,
                      leading: Icons.square_outlined,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyInfiniteNumberValidator,
                      helperText: 'Площадь объекта, м2',
                    ),
                    CustomTextInput(
                      width: 256,
                      hintText: '1000',
                      onChanged: cubit.setDeadline,
                      leading: Icons.timer,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyInfiniteNumberValidator,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.0,
                  children: [
                    Column(
                      children: [
                        ChangeNotifierProvider(
                          create: (context) => SingleObjectValueNotifierDropDown(
                            baseFactors: factors.factorsByType(InputFactorType.b.value),
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
                            onSelected: cubit.setComplexityFactor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ChangeNotifierProvider(
                          create: (context) => SingleObjectValueNotifierDropDown(
                            baseFactors: factors.factorsByType(InputFactorType.c.value),
                          ),
                          child: InputFactorMoonDropDown(
                            onSelected: cubit.setLocationFactor,
                            helperText: InputFactorType.c.value,
                            leadingIcon: MoonIcons.arrows_left_curved_24_light,
                          ),
                        ),
                        ChangeNotifierProvider(
                          create: (context) => SingleObjectValueNotifierDropDown(
                            baseFactors: factors.factorsByType(InputFactorType.d.value),
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
                const TextDivider(
                  text: "Доп. кооэфициенты",
                  paddingTop: 8,
                  paddingBottom: 16,
                ),
                Row(
                  spacing: 8.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextInput(
                      width: 256,
                      hintText: '100',
                      initValue: 100,
                      onChanged: cubit.setRateReturnFactor,
                      leading: Icons.calculate,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyNumberValidator,
                      helperText: 'Норма прибыли, %',
                    ),
                    CustomTextInput(
                      width: 256,
                      hintText: '100',
                      initValue: 100,
                      onChanged: cubit.setConsumerFactor,
                      leading: Icons.person,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyNumberValidator,
                      helperText: 'Заказчик, %',
                    ),
                    CustomTextInput(
                      width: 256,
                      hintText: '100',
                      initValue: 100,
                      onChanged: cubit.setOverPriceFactor,
                      leading: Icons.money_off,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyNumberValidator,
                      helperText: 'Накладные, %',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
                    label: Text('Выбрать стадии'),
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
