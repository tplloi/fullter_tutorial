import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

import '../common/common_example_wrapper.dart';
import '../common/example_button.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CommonUseCasesExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CommonUseCasesExamples",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            ExampleButtonNode(
              title: "Large Image",
              onPressed: () {
                Get.to(CommonExampleRouteWrapper(
                  imageProvider:
                      const AssetImage("assets/images/large-image.jpg"),
                ));
              },
            ),
            ExampleButtonNode(
              title: "Large Image (filter quality: medium)",
              onPressed: () {
                Get.to(CommonExampleRouteWrapper(
                  imageProvider:
                      const AssetImage("assets/images/large-image.jpg"),
                  filterQuality: FilterQuality.medium,
                ));
              },
            ),
            ExampleButtonNode(
              title: "Small Image (custom background)",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider:
                        const AssetImage("assets/images/small-image.jpg"),
                    backgroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Colors.white, Colors.grey],
                        stops: [0.1, 1.0],
                      ),
                    ),
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "Small Image (custom alignment)",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider:
                        const AssetImage("assets/images/small-image.jpg"),
                    backgroundDecoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    basePosition: Alignment(0.5, 0.0),
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "Animated GIF",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider: const AssetImage("assets/images/neat.gif"),
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "Limited scale",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider:
                        const AssetImage("assets/images/large-image.jpg"),
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.covered * 1.1,
                    initialScale: PhotoViewComputedScale.covered * 1.1,
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "Custom Initial scale",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider:
                        const AssetImage("assets/images/large-image.jpg"),
                    initialScale: PhotoViewComputedScale.contained * 0.7,
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "One tap to dismiss",
              onPressed: () {
                Get.to(
                  OneTapWrapper(
                    imageProvider:
                        const AssetImage("assets/images/large-image.jpg"),
                  ),
                );
              },
            ),
            ExampleButtonNode(
              title: "No gesture ",
              onPressed: () {
                Get.to(
                  CommonExampleRouteWrapper(
                    imageProvider:
                        const AssetImage("assets/images/large-image.jpg"),
                    disableGestures: true,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OneTapWrapper extends StatelessWidget {
  const OneTapWrapper({
    required this.imageProvider,
  });

  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: GestureDetector(
          onTapDown: (_) {
            Navigator.pop(context);
          },
          child: PhotoView(
            imageProvider: imageProvider,
          ),
        ),
      ),
    );
  }
}
