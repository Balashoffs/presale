import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/design/common/next_page_widget.dart';
import 'package:presale/src/presentation/modules/v5/design/common/opacity_widget.dart';
import 'package:presale/src/presentation/modules/v5/design/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v5/design/object_data_input/widget/drop_down_factors_controller.dart';
import 'package:presale/src/presentation/modules/v5/design/object_data_input/widget/drop_down_factors_widgets.dart';
import 'package:provider/provider.dart';

import 'package:presale/src/di/di.dart';
import 'package:presale/src/presentation/common/widget/text_divider.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_repository.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';

import 'package:presale/src/presentation/bloc/v5/design/input/object_input_data/object_input_data_cubit.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_app_bar.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_toast_widget.dart';
import 'package:presale/src/presentation/modules/v5/design/common/drop_down_text_controller.dart';
import 'package:presale/src/presentation/modules/v5/design/object_data_input/widget/custon_text_input.dart';
import 'package:presale/src/presentation/modules/v5/design/common/text_input_validators.dart';

import 'widget/widget.dart';

class InputDataPage extends StatelessWidget {
  const InputDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Text(
        'Первоначальные данные о проекте',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,

        ),

      ),

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
          nextPage: () {
            context.go(designResourcesRoute);
          },
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
              spacing: 32.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 3 / 4,
                  child: Column(
                    spacing: 16.0,
                    children: [
                      Row(
                        spacing: 16.0,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: CustomTextInput(
                              initValue: 'Наименование объекта*',
                              onChanged: cubit.setObjectName,
                              trailing: MoonIcons.controls_close_small_24_light,
                              validator: objectNameValidator,
                              autofocus: true,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ChangeNotifierProvider(
                              create: (context) => DropDownTextController(
                                inputData: DivisionType.values
                                    .map((e) => e.text)
                                    .toList(),
                              ),
                              child: CustomMoonDropDown(
                                helperText:"Виды проектной документации*" ,
                                validator: divisionTypeValidator('Нужно выбрать'),
                                initText: 'Нужно выбрать',
                                onSelected: cubit.setResultDesignDocumentations,
                                leadingIcon: MoonIcons.text_bullets_list_16_light,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomTextAreaInput(
                        hintText: 'Адрес объекта*',
                        onChanged: cubit.setObjectLocation,
                        trailing: MoonIcons.controls_close_small_24_light,
                        validator: objectLocationValidator,
                      ),                    ],
                  ),
                ),
                Row(
                  spacing: 16.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextInput(
                      width: 196,
                      initValue: '0',
                      onChanged: cubit.setSquare,
                      leading: Icons.square_outlined,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyInfiniteNumberValidator,
                      helpText: 'Площадь объекта, м2',
                    ),
                    CustomTextInput(
                      width: 196,
                      initValue: '0',
                      onChanged: cubit.setDeadline,
                      leading: Icons.timer,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyInfiniteNumberValidator,
                      helpText: 'Сроки выполнения, дн.',
                    ),
                    CustomTextInput(
                      width: 196,
                      initValue: '1.2',
                      onChanged: cubit.setMarginFactor,
                      leading: Icons.calculate,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helpText: 'Норма прибыли, %',
                    ),
                    CustomTextInput(
                      width: 196,
                      initValue: '0.8',
                      onChanged: cubit.setOverPriceFactor,
                      leading: Icons.money_off,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helpText: 'Накладные, %',
                    ),
                    CustomTextInput(
                      width: 196,
                      initValue: '1',
                      onChanged: cubit.setCustomerFactor,
                      leading: Icons.person,
                      trailing: MoonIcons.controls_close_small_24_light,
                      validator: onlyFactorValidator,
                      helpText: 'Заказчик, %',
                    ),
                  ],
                ),
                OpacityWidget(
                  child: Row(
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
                              leadingIcon:
                                  MoonIcons.arrows_left_curved_24_light,
                            ),
                          ),
                          ChangeNotifierProvider(
                            create: (context) =>
                                MultiObjectValueNotifierDropDown(
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
                            create: (context) =>
                                SingleObjectValueNotifierDropDown(
                                  baseFactors: factors.factorsByType(
                                    InputFactorType.c.value,
                                  ),
                                ),
                            child: InputFactorMoonDropDown(
                              onSelected: cubit.setLocationFactor,
                              helperText: InputFactorType.c.value,
                              leadingIcon:
                                  MoonIcons.arrows_left_curved_24_light,
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
                              leadingIcon:
                                  MoonIcons.arrows_left_curved_24_light,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                NextPageWidget(
                  onTap: () {
                    bool isValid = Form.of(context).validate();
                    if (isValid) {
                      cubit.nextPage();
                    } else {
                      showToast(context, 'Не все поля заполнены!');
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
