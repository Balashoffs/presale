import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class CustomMoonDropDownWithNotifier extends StatefulWidget {
  const CustomMoonDropDownWithNotifier({
    super.key,
    required this.onSelected,
    required this.helperText,
    required this.leadingIcon,
    this.width = 256,
    required this.initText,
    this.validator,
  });

  final Function(String result) onSelected;
  final String helperText;
  final String initText;
  final IconData leadingIcon;
  final double width;
  final FormFieldValidator<String>? validator;

  @override
  State<CustomMoonDropDownWithNotifier> createState() =>
      _CustomMoonDropDownWithNotifierState();
}

class _CustomMoonDropDownWithNotifierState
    extends State<CustomMoonDropDownWithNotifier> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.text = widget.initText;
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = colorTable(context)[40]?.withAlpha(100);
    final borderColor = colorTable(context)[40]?.withAlpha(50);
    return Consumer<StringNotifierDropDown>(
      builder: (context, value, child) {
        return MoonDropdown(
          groupId: Uuid().v4(),
          show: value.showMenu,
          borderColor: borderColor ?? Colors.transparent,
          backgroundColor: backgroundColor,
          constrainWidthToChild: true,
          distanceToTarget: 8.0,
          dropdownAnchorPosition: MoonDropdownAnchorPosition.bottom,
          dropdownShadows: null,
          onTapOutside: () {
            value.tapOutside();
          },
          content: Column(children: _generateItems(value, widget.onSelected)),
          child: MoonFormTextInput(
            controller: _textController,
            validator: widget.validator,
            helper: Text(widget.helperText),
            width: widget.width,
            readOnly: true,
            canRequestFocus: false,
            mouseCursor: MouseCursor.defer,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            hintText: value.current.isEmpty ? widget.initText : value.current,
            onTap: () => value.onTap(),
            onTapOutside: (PointerDownEvent _) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            leading: Icon(widget.leadingIcon, size: 24),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Center(
                child: AnimatedRotation(
                  duration: const Duration(milliseconds: 200),
                  turns: value.showMenu ? -0.5 : 0,
                  child: const Icon(
                    MoonIcons.controls_chevron_down_16_light,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _generateItems(StringNotifierDropDown vn,
      Function(String result) onSelected,) {
    return vn.items.map((e) {
      return MoonMenuItem(
        menuItemCrossAxisAlignment: CrossAxisAlignment.center,
        labelAndContentCrossAxisAlignment: CrossAxisAlignment.center,
        width: 312,
        onTap: () {
          onSelected(e);
          vn.selected(e);
          _textController.text = e;
          setState(() {});
        },
        label: Text(e),
      );
    }).toList();
  }
}

class StringNotifierDropDown extends ChangeNotifier {
  bool _showMenu;

  bool get showMenu => _showMenu;

  final List<String> _inputData;

  StringNotifierDropDown({required List<String> inputData})
    : _inputData = inputData,
      _showMenu = false,
      _current = '';

  String _current;

  String get current => _current;

  List<String> get items => _calc;

  List<String> get _calc =>
      _inputData.where((element) => element != _current).toList();

  void selected(String value) {
    _current = value;
    _showMenu = false;
    notifyListeners();
  }

  void onTap() {
    _showMenu = !_showMenu;
    notifyListeners();
  }

  void tapOutside() {
    _showMenu = false;
    notifyListeners();
  }
}


