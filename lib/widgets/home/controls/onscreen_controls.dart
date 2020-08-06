//import 'package:flutter/material.dart';
//import 'package:flutter_video_playerdemo/animations/spinner_animation.dart';
//import 'package:flutter_video_playerdemo/resources/assets.dart';
//import 'package:flutter_video_playerdemo/widgets/home/controls/video_control_action.dart';
//import 'package:flutter_video_playerdemo/widgets/home/video_metadata/user_profile.dart';
//import 'package:flutter_video_playerdemo/widgets/home/video_metadata/video_desc.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:share/share.dart';
//
//import '../audio_spinner_icon.dart';
//
//Widget onScreenControls() {
//  return Container(
//    child: Row(
//      children: <Widget>[
//        Expanded(flex: 5, child: videoDesc()),
//        Expanded(
//          flex: 1,
//          child: Container(
//            padding: EdgeInsets.only(bottom: 60, right: 0),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                Expanded(
//                  flex: 1,
//                  child: Column(
//                    children: <Widget>[
//                      GestureDetector(
//                          onTap: () {
//                            print('Blank');
//                          },
//                          child: Container(
//                              child: Text('')))
//                    ],
//                  ),
//                ),
//                Expanded(
//                  flex: 3,
//                  child: Column(
//                    children: <Widget>[
//                                  Expanded(
////                  flex: 1,
//                                    child: Column(
//                                      children: <Widget>[
//                                        GestureDetector(
//                                            onTap: () {
//                                              print('Hello');
//                                              Fluttertoast.showToast(
//                                                  msg: 'Proflie',
//                                                  toastLength: Toast.LENGTH_SHORT,
//                                                  gravity: ToastGravity.BOTTOM,
//                                                  timeInSecForIos: 1,
////                                backgroundColor: Colors.red,
//                                                  textColor: Colors.white);
//                                            },
//                                            child: Container(
//                                                child: userProfile()))
//                                      ],
//                                    ),
//                                  ),
//                                  Expanded(
////                  flex: 1,
//                                    child: Column(
//                                      children: <Widget>[
//                                        GestureDetector(
//                                            onTap: () {
//                                              print('Hello');
//                                              Fluttertoast.showToast(
//                                                  msg: 'Like',
//                                                  toastLength: Toast.LENGTH_SHORT,
//                                                  gravity: ToastGravity.BOTTOM,
//                                                  timeInSecForIos: 1,
////                                backgroundColor: Colors.red,
//                                                  textColor: Colors.white);
//                                            },
//                                            child: Container(
//                                                child: videoControlAction(icon: AppIcons.heart, size: 30, label: "17.8k")))
//                                      ],
//                                    ),
//                                  ),
//                                  Expanded(
////                  flex: 1,
//                                    child: Column(
//                                      children: <Widget>[
//                                        GestureDetector(
//                                            onTap: () {
//                                              print('Hello');
//                                              Fluttertoast.showToast(
//                                                  msg: 'Message',
//                                                  toastLength: Toast.LENGTH_SHORT,
//                                                  gravity: ToastGravity.BOTTOM,
//                                                  timeInSecForIos: 1,
////                                backgroundColor: Colors.red,
//                                                  textColor: Colors.white);
//                                            },
//                                            child: Container(
//                                                child: videoControlAction(icon: AppIcons.chat_bubble, size: 30, label: "130")))
//                                      ],
//                                    ),
//                                  ),
//                                  Expanded(
////                  flex: 1,
//                                    child: Column(
//                                      children: <Widget>[
//                                        GestureDetector(
//                                            onTap: () {
//                                              print('Hello');
//                                              var context;
//                                              final RenderBox box = context.findRenderObject();
//                                              Share.share("Bhanu",
//                                                  subject: "Sample",
//                                                  sharePositionOrigin:
//                                                  box.localToGlobal(Offset.zero) &
//                                                  box.size);
//                                            },
//                                            child: Container(
//                                                child: videoControlAction(icon: AppIcons.reply, label: "Share", size: 25)))
//                                      ],
//                                    ),
//                                  ),
//                                  Expanded(
////                  flex: 1,
//                                    child: Column(
//                                      children: <Widget>[
//                                        GestureDetector(
//                                            onTap: () {
//                                              print('Hello');
//                                              Fluttertoast.showToast(
//                                                  msg: 'User',
//                                                  toastLength: Toast.LENGTH_SHORT,
//                                                  gravity: ToastGravity.BOTTOM,
//                                                  timeInSecForIos: 1,
////                                backgroundColor: Colors.red,
//                                                  textColor: Colors.white);
//                                            },
//                                            child: Container(
//                                                child: SpinnerAnimation(body: audioSpinner())))
//                                      ],
//                                    ),
//                                  ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        )
//      ],
//    ),
//  );
//}
