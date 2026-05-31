import 'package:flutter/material.dart';

import 'chipped_icon_button.dart';


class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.titleColor,
    required this.chipBackgroundColor,
    required this.iconColor,
    this.toolbarHeight = 66,
    this.horizontalPadding = 16,
    this.onBackPressed,
    this.trailingIcon,
    this.onTrailingPressed,
  });

  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final Color chipBackgroundColor;
  final Color iconColor;
  final double toolbarHeight;
  final double horizontalPadding;
  final VoidCallback? onBackPressed;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingPressed;

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);

  @override
  Widget build(BuildContext context) {
    final hasTrailing =
        trailingIcon != null && onTrailingPressed != null;

    return AppBar(
      toolbarHeight: toolbarHeight,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Row(
          children: [
            if (onBackPressed != null)
              ChippedIconButton(
                backgroundColor: chipBackgroundColor,
                iconColor: iconColor,
                icon: Icons.arrow_back_outlined,
                onPressed: onBackPressed!,
              )
            else
              SizedBox(width: _chipOuterWidth),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  color: titleColor,
                ),
              ),
            ),
            if (hasTrailing)
              ChippedIconButton(
                backgroundColor: chipBackgroundColor,
                iconColor: iconColor,
                icon: trailingIcon!,
                onPressed: onTrailingPressed!,
              )
            else
              SizedBox(width: _chipOuterWidth),
          ],
        ),
      ),
    );
  }

  /// 8 + 24 + 8 outer width for symmetric title when one side is missing.
  static const double _chipOuterWidth = 40;
}
