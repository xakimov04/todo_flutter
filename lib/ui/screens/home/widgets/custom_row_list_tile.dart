import 'package:flutter/widgets.dart';
import 'package:todo_flutter/core/utils/extensions.dart';

class CustomRowListTile extends StatelessWidget {
  final String text;
  final MainAxisAlignment mainAxisAlignment;
  final int? betweenWidth;
  final Widget child;
  final bool shouldAddSizedBox;

  const CustomRowListTile({
    super.key,
    required this.text,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.shouldAddSizedBox = false,
    this.betweenWidth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (betweenWidth != null) betweenWidth!.w(),
        child,
        if (shouldAddSizedBox) const SizedBox(),
      ],
    );
  }
}
