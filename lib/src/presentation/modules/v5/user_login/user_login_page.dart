import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/bloc/v5/user_login/user_login_cubit.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/user_login/user_login_page_controller.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: UserLoginCubitBuilder());
  }
}

class UserLoginCubitBuilder extends StatelessWidget {
  const UserLoginCubitBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserLoginCubit>(
      create: (context) => UserLoginCubit(),
      child: UserLoginWidget(),
    );
  }
}

class UserLoginWidget extends StatelessWidget {
  const UserLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              Center(
                child: MoonMenuItem(
                  width: MediaQuery.of(context).size.width / 2,
                  menuItemCrossAxisAlignment: CrossAxisAlignment.center,
                  leading: MoonAvatar(
                    borderRadius: BorderRadius.circular(8.0),
                    backgroundColor: context.moonColors!.jiren,
                    avatarSize: MoonAvatarSize.md,
                    content: const Icon(MoonIcons.chat_chat_32_light, size: 24),
                  ),
                  label: Text(
                    'Введите ваши данные для упрощенной генерации подписи при создании КП',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: CustomMoonGroupTextWidget(),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        "*Вводимые данные хранятся локально на вашем устройстве и никуда не передаются",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MoonFilledButton(
                        backgroundColor: context.moonColors!.zeno,
                        label: const Text("Сохранить"),
                        onTap: () => Form.of(context).validate(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomMoonGroupTextWidget extends StatelessWidget {
  const CustomMoonGroupTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BorderRadius customRadius = BorderRadius.circular(8.0);
    UserLoginCubit cubit = context.read<UserLoginCubit>();
    UserLoginTextGroupController textGroupController =
        cubit.textGroupController;
    double width = MediaQuery.of(context).size.width / 2;
    return SizedBox(
      width: width,
      child: MoonTextInputGroup(
        textPadding: EdgeInsets.all(8.0),
        enabled: true,
        orientation: MoonTextInputGroupOrientation.vertical,
        children: [
          MoonFormTextInput(
            width: width,
            activeBorderColor: colorTable(context)[40],
            inactiveBorderColor: colorTable(context)[40],
            textInputSize: MoonTextInputSize.xl,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: textGroupController.fistNameController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            hintText: textGroupController.fistNameHintText,
            onChanged: cubit.onFirstNameChange,
            validator: textGroupController.fistNameValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.generic_user_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.fistNameController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.secondNameController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            hintText: textGroupController.secondNameHintText,
            onChanged: cubit.onSecondNameChange,
            validator: textGroupController.secondNameValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.generic_user_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.secondNameController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.lastNameController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            hintText: textGroupController.lastNameHintText,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: cubit.onLastNameChange,
            validator: textGroupController.lastNameValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.generic_user_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.lastNameController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.companyTitleController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            hintText: textGroupController.companyTitleHintText,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: cubit.onCompanyTitleChange,
            validator: textGroupController.companyTitleValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.generic_about_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.companyTitleController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.jobTitleController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            hintText: textGroupController.jobTitleHintText,
            onChanged: cubit.onJobTitleChange,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: textGroupController.jobTitleValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.files_case_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.jobTitleController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.phoneNumberController,
            enabled: true,
            hasFloatingLabel: true,
            borderRadius: customRadius,
            hintText: textGroupController.phoneNumberHintText,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: cubit.onPhoneNumberChange,
            validator: textGroupController.phoneNumberValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.devices_phone_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.phoneNumberController.clear(),
              ),
            ),
          ),
          MoonFormTextInput(
            width: width,
            textInputSize: MoonTextInputSize.xl,
            controller: textGroupController.jobEmailController,
            enabled: true,
            hasFloatingLabel: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            borderRadius: customRadius,
            hintText: textGroupController.jobEmailHintText,
            onChanged: cubit.onJobEmailChange,
            validator: textGroupController.jobEmailValidator,
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: const Icon(MoonIcons.mail_email_stats_24_light, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const Icon(
                  MoonIcons.controls_close_small_24_light,
                  size: 24,
                ),
                onTap: () => textGroupController.jobEmailController.clear(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
