import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';

class LeftRightBoxRoute extends StatelessWidget {
  const LeftRightBoxRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final more = GestureDetector(
      onTap: () => debugPrint("点击更多"),
      child: const Text(
        "更多》",
      ),
    );
    return Column(
      children: [
        Row(
          children: [
            const Text("国漫精选", maxLines: 1),
            const Spacer(),
            more,
          ],
        ),
        LeftRightBox(
          left: const Text("国漫精选", maxLines: 1),
          right: more,
        ),
        // Row(
        //   children: [
        //     Text("国漫精选" * 10, maxLines: 1),
        //     Spacer(),
        //     more,
        //   ],
        // ),
        LeftRightBox(
          left: Text("国漫精选" * 10, maxLines: 1),
          right: more,
        ),
        // ListTile(
        //   title: const Text("国漫精选"),
        //   trailing: Text('xxxxxx' * 8),
        //   contentPadding: EdgeInsets.zero,
        // ),
        LeftRightBox(
          left: Text("国漫精选" * 10, maxLines: 1),
          right: Text('xxxxxx' * 8),
          verticalAlign: VerticalAlign.center,
        ),
      ],
    );
  }
}
