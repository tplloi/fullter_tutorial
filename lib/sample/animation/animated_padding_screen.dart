import 'dart:math';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedPaddingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedPaddingScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: AnimatedPaddingWidget(),
      ),
    );
  }
}

class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0;

  _changePadding() {
    paddingValue = Random().nextDouble() * 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 400,
          color: Colors.green,
          child: AnimatedPadding(
            padding: EdgeInsets.all(paddingValue),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.purple,
            ),
          ),
        ),
        UIUtils.getButton("change padding", () {
          _changePadding();
        }),
      ],
    );
  }
}
