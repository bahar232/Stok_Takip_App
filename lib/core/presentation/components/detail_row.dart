import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {

  final String title;
  final String content;
  final Color? color;
  final EdgeInsets? paddings;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? commonStyle;
  final MainAxisAlignment mainAxisAlignment;
  final bool useFontWeightForContent;

  const DetailRow({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.title,
    required this.content,
    this.color,
    this.paddings,
    this.contentStyle,
    this.commonStyle,
    this.titleStyle,
    this.useFontWeightForContent = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyLarge
        ?.copyWith(color: color);

    final defaultTitleStyle = titleStyle ?? commonStyle ?? style;

    var defaultContentStyle = contentStyle ?? commonStyle?.copyWith(
      fontWeight: useFontWeightForContent ? FontWeight.w500 : commonStyle?.fontWeight
    );
    defaultContentStyle ??= style?.copyWith(
        fontWeight: useFontWeightForContent ? FontWeight.w500 : style.fontWeight
    );

    final defaultPaddings = paddings ?? const EdgeInsets.symmetric(vertical: 5,horizontal: 2);

    return Padding(
      padding: defaultPaddings,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            "$title: ",
            style: defaultTitleStyle,
          ),
          Text(
            content,
            style: defaultContentStyle,
          )
        ],
      ),
    );
  }
}
