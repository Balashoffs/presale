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
        style: TextStyle(fontSize: 16),
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
        state.mapOrNull(nextPage: (_) => context.go(designResourcesRoute));
      },
      builder: (context, state) {
        return state.mapOrNull(
              initial: (_) => CustomCircleLoader(),
              enterInputData: (value) => LoadedWidget(factors: value.factors),
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

    return Center(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Form(
            child: Builder(
              builder: (context) {
                return Column(
                  spacing: 16.0,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16.0,
                      children: [
                        CustomTextInput(
                          width: 500,
                          hintText: 'Наименование объекта*',
                          onChanged: cubit.setObjectName,
                          trailing: MoonIcons.controls_close_small_24_light,
                          validator: objectNameValidator,
                        ),
                        CustomTextAreaInput(
                          width: 500,
                          hintText: 'Адрес объекта*',
                          onChanged: cubit.setObjectLocation,
                          trailing: MoonIcons.controls_close_small_24_light,
                          validator: objectLocationValidator,
                        ),
                        TextWithRowHint(
                          hintText: "Виды проектной документации*",
                          textWidget: ChangeNotifierProvider(
                            create: (context) => DropDownTextController(
                              inputData: DivisionType.values
                                  .map((e) => e.text)
                                  .toList(),
                            ),
                            child: CustomMoonDropDown(
                              width: 240,
                              validator: divisionTypeValidator(
                                'Нужно выбрать',
                              ),
                              initText: 'Нужно выбрать',
                              onSelected: cubit.setResultDesignDocumentations,
                              leadingIcon:
                              MoonIcons.text_bullets_list_16_light,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextDivider(text: 'Необязательные параметры', paddingTop: 8.0, paddingBottom: 8.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16.0,
                      children: [
                        TextWithRowHint(
                          leading: Icons.square_outlined,
                          hintText: 'Площадь объекта, м2',
                          textWidget: CustomTextInput(
                            width: 128,
                            onChanged: cubit.setSquare,
                            trailing: MoonIcons.controls_close_small_24_light,
                            validator: onlyInfiniteNumberValidator,
                            initValue: '0',
                          ),
                        ),
                        TextWithRowHint(
                          leading: Icons.timer,
                          hintText: 'Сроки выполнения, дн.',
                          textWidget: CustomTextInput(
                            width: 128,
                            onChanged: cubit.setDeadline,
                            trailing: MoonIcons.controls_close_small_24_light,
                            validator: onlyInfiniteNumberValidator,
                            initValue: '0',
                          ),
                        ),
                        TextWithRowHint(
                          leading: Icons.calculate,
                          hintText: 'Норма прибыли,',
                          textWidget: CustomTextInput(
                            width: 128,
                            onChanged: cubit.setMarginFactor,
                            trailing: MoonIcons.controls_close_small_24_light,
                            validator: onlyFactorValidator,
                            initValue: '1.0',
                          ),
                        ),
                        TextWithRowHint(
                          leading: Icons.money_off,
                          hintText: 'Накладные, ',
                          textWidget: CustomTextInput(
                            width: 128,
                            onChanged: cubit.setOverPriceFactor,
                            trailing: MoonIcons.controls_close_small_24_light,
                            validator: onlyFactorValidator,
                            initValue: '1.0',
                          ),
                        ),
                        TextWithRowHint(
                          leading: Icons.person,
                          hintText: 'Заказчик, ',
                          textWidget: CustomTextInput(
                            width: 128,
                            onChanged: cubit.setCustomerFactor,
                            trailing: MoonIcons.controls_close_small_24_light,
                            validator: onlyFactorValidator,
                            initValue: '1.0',
                          ),
                        ),
                      ],
                    ),
                    // OpacityWidget(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     spacing: 8.0,
                    //     children: [
                    //       Column(
                    //         children: [
                    //           ChangeNotifierProvider(
                    //             create: (context) =>
                    //                 SingleObjectValueNotifierDropDown(
                    //                   baseFactors: factors.factorsByType(
                    //                     InputFactorType.b.value,
                    //                   ),
                    //                 ),
                    //             child: InputFactorMoonDropDown(
                    //               onSelected: cubit.setHeightFactor,
                    //               helperText: InputFactorType.b.value,
                    //               leadingIcon:
                    //                   MoonIcons.arrows_left_curved_24_light,
                    //             ),
                    //           ),
                    //           ChangeNotifierProvider(
                    //             create: (context) =>
                    //                 MultiObjectValueNotifierDropDown(
                    //                   inputData: factors.complexities,
                    //                 ),
                    //             child: InputFactorMultiCustomMoonDropDown(
                    //               onSelected: cubit.setComplexityFactor,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           ChangeNotifierProvider(
                    //             create: (context) =>
                    //                 SingleObjectValueNotifierDropDown(
                    //                   baseFactors: factors.factorsByType(
                    //                     InputFactorType.c.value,
                    //                   ),
                    //                 ),
                    //             child: InputFactorMoonDropDown(
                    //               onSelected: cubit.setLocationFactor,
                    //               helperText: InputFactorType.c.value,
                    //               leadingIcon:
                    //                   MoonIcons.arrows_left_curved_24_light,
                    //             ),
                    //           ),
                    //           ChangeNotifierProvider(
                    //             create: (context) =>
                    //                 SingleObjectValueNotifierDropDown(
                    //                   baseFactors: factors.factorsByType(
                    //                     InputFactorType.d.value,
                    //                   ),
                    //                 ),
                    //             child: InputFactorMoonDropDown(
                    //               onSelected: cubit.setSquareFactor,
                    //               helperText: InputFactorType.d.value,
                    //               leadingIcon:
                    //                   MoonIcons.arrows_left_curved_24_light,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3 / 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
