import 'package:flutter/material.dart';
import 'package:marvel_app/constants/color_manager.dart';
import 'package:marvel_app/constants/style_manager.dart';

class ContinueBtn extends StatelessWidget {
  final String title;
  const ContinueBtn({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.05,
      margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15.0,
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: StyleManager.subHeader,
        ),
      ),
    );
  }
}
