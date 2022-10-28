import 'package:flutter/material.dart';
import 'package:tgv_mobile/constants/app_theme.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton(
      {Key? key, required this.onPressed, required this.title})
      : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Theme(
      data: AppTheme.lightThemeData,
      child: ElevatedButton(
          style: raisedButtonStyle, onPressed: onPressed, child: Text(title)),
    );
  }
}
