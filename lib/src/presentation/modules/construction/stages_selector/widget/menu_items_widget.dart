import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:presale/src/presentation/bloc/construction/provider/provider.dart';

class StagesSelectorMenuItemsWidget extends StatelessWidget {
  const StagesSelectorMenuItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StageItemValueNotifier>(
      builder: (context, value, child) {
        return ListView(
           shrinkWrap: true,
           children: value.widgets,
        );
      },
    );
  }
}
