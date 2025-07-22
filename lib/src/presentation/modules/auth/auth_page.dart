import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/typography_page_options.dart';


class AuthPage extends StatelessWidget {
  final void Function(String code) onPasswordChanged;
  final VoidCallback onConfirmed;
  final Stream<bool> loadingStream;
  final Stream<String?> errorStream;

  const AuthPage({
    super.key,
    required this.onPasswordChanged,
    required this.onConfirmed,
    required this.loadingStream,
    required this.errorStream,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 280,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Калькулятор для расчета стоимости работ и услуг',
                  style: getHeadingTextStyle(context, MoonTextSize.size16),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 28,
                ),
                StreamBuilder<String?>(
                  stream: errorStream,
                  builder: (context, snapshot) {
                    return MoonTextInput(
                      hintText: 'Пароль',
                      obscureText: true,
                      onChanged: onPasswordChanged,
                      errorText: snapshot.data,
                    );
                  }
                ),
                const SizedBox(
                  height: 28,
                ),
                MoonButton(
                  onTap: () {
                    onConfirmed();
                  },
                   label: Text('Войти'),
                ),
                const SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
