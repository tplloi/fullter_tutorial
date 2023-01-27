import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/uuid/uuid_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/vibration/vibration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/core/base_stateful_state.dart';
import '../../lib/util/ui_utils.dart';
import 'app_settings/app_settings_screen.dart';
import 'async/menu_async_screen.dart';
import 'characters/characters_screen.dart';
import 'communication_between_widget/communication_between_widget_screen.dart';
import 'hexcolor/hexcolor_screen.dart';
import 'internet_connection_checker/internet_connection_checker_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuFuncScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuFuncScreenState();
  }
}

class _MenuFuncScreenState extends BaseStatefulState<MenuFuncScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Fuction menu",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchPolicy();
        },
        iconData: Icons.policy,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingLarge,
        ),
        children: [
          UIUtils.getButton(
            "app_settings",
            () {
              Get.to(() => AppSettingsScreen());
            },
            description:
                "A Flutter plugin for opening iOS and Android phone settings from an app.",
          ),
          UIUtils.getButton(
            "Async",
            () {
              Get.to(() => MenuAsyncScreen());
            },
          ),
          UIUtils.getButton(
            "characters",
            () {
              Get.to(() => CharactersScreen());
            },
            description:
                "String replacement with operations that are Unicode/grapheme cluster aware.",
          ),
          UIUtils.getButton(
            "CommunicationBetweenWidgetScreen",
            () {
              Get.to(() => CommunicationBetweenWidgetScreen());
            },
          ),
          UIUtils.getButton(
            "flutter_app_name",
            () {
              UrlLauncherUtils.launchInWebViewWithJavaScript(
                  "https://pub.dev/packages/flutter_app_name");
            },
            description:
                "A package that makes it easy to set your flutter app launcher name.",
          ),
          UIUtils.getButton(
            "hexcolor",
            () {
              Get.to(() => HexcolorScreen());
            },
            description:
                "Brings HexColor for your dart and flutter projects, convert material colors to hex colors",
          ),
          UIUtils.getButton(
            "internet_connection_checker",
            () {
              Get.to(() => InternetConnectionCheckerScreen());
            },
            description:
                "A pure Dart library that checks for internet by opening a socket to a list of specified addresses, each with individual port and timeout. Defaults are provided for convenience.",
          ),
          UIUtils.getButton(
            "uuid",
            () {
              Get.to(() => UUIDScreen());
            },
            description:
                "RFC4122 (v1, v4, v5) UUID Generator and Parser for all Dart platforms (Web, VM, Flutter)",
          ),
          UIUtils.getButton(
            "vibration",
            () {
              Get.to(() => VibrationScreen());
            },
            description:
                "A plugin for handling Vibration API on iOS, Android, and web.",
          ),
        ],
      ),
    );
  }
}
