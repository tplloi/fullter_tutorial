import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:date_picker_timeline_fixed/date_picker_timeline_fixed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DatePickerTimeLineFixedScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DatePickerTimeLineFixedScreenState();
  }
}

class _DatePickerTimeLineFixedScreenState
    extends BaseStatefulState<DatePickerTimeLineFixedScreen> {
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
        "date_picker_timeline_fixed",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/date_picker_timeline_fixed");
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.black,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              setState(() {
                showSnackBarFull("onDateChange", "date $date");
              });
            },
          ),
        ],
      ),
    );
  }
}
