import 'package:flutter/material.dart';

class CustomAuthorisationButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String authorizationText;
  final String pageNavigator;

  const CustomAuthorisationButton({
    required this.pageNavigator,
    required this.authorizationText,
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color.fromRGBO(193, 179, 108, 1)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: backgroundColor,
            primary: textColor),
        onPressed: () {
          Navigator.pushNamed(context, pageNavigator);
        },
        child: Text(authorizationText),
      ),
    );
  }
}
