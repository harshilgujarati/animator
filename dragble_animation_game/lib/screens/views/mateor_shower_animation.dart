// import 'package:flutter/material.dart';
//
// class mateor_shower_animation extends StatefulWidget {
//   const mateor_shower_animation({Key? key}) : super(key: key);
//
//   @override
//   State<mateor_shower_animation> createState() =>
//       _mateor_shower_animationState();
// }
//
// class _mateor_shower_animationState extends State<mateor_shower_animation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: 970,
//                 child: Image(
//                   image: AssetImage("assets/images/ds.gif",),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';
import 'package:flutter/material.dart';

import '../../utils/attributes.dart';

class mateor_shower_animation extends StatefulWidget {
  const mateor_shower_animation({Key? key}) : super(key: key);

  @override
  State<mateor_shower_animation> createState() =>
      _mateor_shower_animationState();
}

class _mateor_shower_animationState extends State<mateor_shower_animation> {
  List<Meteor> meteorConfigs = [
    Meteor(
      duration: Duration(seconds: 5),
      offset: Offset(190, -200),
      angle: pi / 3,
    ),
    Meteor(
      duration: Duration(seconds: 7),
      offset: Offset(180, -300),
      angle: pi / 3.5,
    ),
    Meteor(
      duration: Duration(seconds: 1),
      offset: Offset(-80, -280),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 6),
      offset: Offset(-290, -180),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 10),
      offset: Offset(-280, -80),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 2),
      offset: Offset(-80, -280),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 6),
      offset: Offset(-180, -580),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 6),
      offset: Offset(-350, -480),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 2),
      offset: Offset(80, 280),
      angle: pi / 4,
    ),
    Meteor(
      duration: Duration(seconds: 7),
      offset: Offset(280, -180),
      angle: pi / 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ds.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.chevron_left, size: 40, color: Colors.white),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: meteorConfigs.length,
                itemBuilder: (context, index) {
                  final config = meteorConfigs[index];
                  return TweenAnimationBuilder<Offset>(
                    onEnd: () {
                      if (index == meteorConfigs.length - 1) {
                        // Animation complete, reset the offsets and restart
                        for (var i = 0; i < meteorConfigs.length; i++) {
                          meteorConfigs[i].offset = Offset(190, -300);
                        }
                        setState(() {});
                      }
                    },
                    duration: config.duration,
                    tween: Tween<Offset>(
                      begin: config.offset,
                      end: Offset(-50, 780),
                    ),
                    child: Transform.rotate(
                      angle: config.angle,
                      child: Image.asset(
                        "assets/images/meteor.gif",
                        height: 180,
                        width: 280,
                      ),
                    ),
                    builder: (context, val, widget) {
                      return Transform.translate(
                        offset: val,
                        child: widget,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
