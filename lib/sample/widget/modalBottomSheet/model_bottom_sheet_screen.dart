import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'CircularModal.dart';
import 'FloatingModal.dart';
import 'ModalComplexAll.dart';
import 'ModalFit.dart';
import 'ModalWillScope.dart';
import 'ModalWithNavigator.dart';
import 'ModalWithNestedScroll.dart';
import 'ModalWithNestedScrollShort.dart';
import 'ModalWithPageView.dart';
import 'modal_inside_modal.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ModelBottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ModelBottomSheetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "Material fit",
              () {
                showMaterialModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Bar Modal",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Avatar Modal",
              () {
                showAvatarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Float Modal",
              () {
                showFloatingModalBottomSheet(
                  context: context,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal fit",
              () {
                showCupertinoModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Small Modal forced to expand",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalFit(),
                );
              },
            ),
            UIUtils.getButton(
              "Reverse list",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(reverse: true),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal inside modal",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Modal with inside navigation",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalWithNavigator(),
                );
              },
            ),
            UIUtils.getButton(
              "Cupertino Navigator + Scroll + WillPopScope",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ComplexModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with WillPopScope",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalWillScope(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with Nested Scroll",
              () {
                showCupertinoModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => NestedScrollModal(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal with PageView",
              () {
                showBarModalBottomSheet(
                  expand: true,
                  context: context,
                  builder: (context) => ModalWithPageView(),
                );
              },
            ),
            UIUtils.getButton(
              "Modal Custom",
              () {
                showBarModalBottomSheet(
                  expand: false,
                  context: context,
                  builder: (context) => CustomModal(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}