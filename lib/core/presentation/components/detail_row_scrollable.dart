import 'package:flutter/material.dart';

class DetailRowScrollable extends StatelessWidget {

  final String title;
  final String content;
  final Color? color;
  final EdgeInsets? paddings;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;


  const DetailRowScrollable({
    Key? key,
    required this.title,
    required this.content,
    this.color,
    this.paddings,
    this.contentStyle,
    this.titleStyle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyLarge
        ?.copyWith(color: color);

    final defaultTitleStyle = titleStyle ?? style;

    final defaultContentStyle = contentStyle ?? style?.copyWith(
        fontWeight: FontWeight.w500
    );

    final defaultPaddings = paddings ?? const EdgeInsets.symmetric(vertical: 5,horizontal: 2);

    return Padding(
      padding: defaultPaddings,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}
