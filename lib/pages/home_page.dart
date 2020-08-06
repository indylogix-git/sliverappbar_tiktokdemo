import 'package:flutter/material.dart';
import 'package:flutter_video_playerdemo/animations/spinner_animation.dart';
import 'package:flutter_video_playerdemo/resources/assets.dart';
import 'package:flutter_video_playerdemo/widgets/home/audio_spinner_icon.dart';
import 'package:flutter_video_playerdemo/widgets/home/controls/onscreen_controls.dart';
import 'package:flutter_video_playerdemo/widgets/home/controls/video_control_action.dart';
import 'package:flutter_video_playerdemo/widgets/home/home_video_renderer.dart';
import 'package:flutter_video_playerdemo/widgets/home/video_metadata/user_profile.dart';
import 'package:flutter_video_playerdemo/widgets/home/video_metadata/video_desc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

class HomeScreen extends StatelessWidget {

  final List<String> video = [
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://media.w3.org/2010/05/sintel/trailer.mp4",
    "http://vfx.mtime.cn/Video/2019/03/09/mp4/190309153658147087.mp4",
    "http://vfx.mtime.cn/Video/2019/03/12/mp4/190312083533415853.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://media.w3.org/2010/05/sintel/trailer.mp4",
    "http://vfx.mtime.cn/Video/2019/03/09/mp4/190309153658147087.mp4",
    "http://vfx.mtime.cn/Video/2019/03/12/mp4/190312083533415853.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    "https://media.w3.org/2010/05/sintel/trailer.mp4",
    "http://vfx.mtime.cn/Video/2019/03/09/mp4/190309153658147087.mp4",
    "http://vfx.mtime.cn/Video/2019/03/12/mp4/190312083533415853.mp4",
  ];

  @override
  Widget build(BuildContext context) {

    Widget onScreenControls() {
      return Container(
        child: Row(
          children: <Widget>[
            Expanded(flex: 5, child: videoDesc()),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 60, right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                print('Blank');
                              },
                              child: Container(
                                  child: Text('')))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Expanded(
//                  flex: 1,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      print('Hello');
                                      Fluttertoast.showToast(
                                          msg: 'Proflie',
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIos: 1,
//                                backgroundColor: Colors.red,
                                          textColor: Colors.white);
                                    },
                                    child: Container(
                                        child: userProfile()))
                              ],
                            ),
                          ),
                          Expanded(
//                  flex: 1,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      print('Hello');
                                      Fluttertoast.showToast(
                                          msg: 'Like',
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIos: 1,
//                                backgroundColor: Colors.red,
                                          textColor: Colors.white);
                                    },
                                    child: Container(
                                        child: videoControlAction(icon: AppIcons.heart, size: 30, label: "17.8k")))
                              ],
                            ),
                          ),
                          Expanded(
//                  flex: 1,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      print('Hello');
                                      Fluttertoast.showToast(
                                          msg: 'Message',
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIos: 1,
//                                backgroundColor: Colors.red,
                                          textColor: Colors.white);
                                    },
                                    child: Container(
                                        child: videoControlAction(icon: AppIcons.chat_bubble, size: 30, label: "130")))
                              ],
                            ),
                          ),
                          Expanded(
//                  flex: 1,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      print('Hello');
                                      final RenderBox box = context.findRenderObject();
                                      Share.share("Bhanu",
                                          subject: "Sample",
                                          sharePositionOrigin:
                                          box.localToGlobal(Offset.zero) &
                                          box.size);
                                    },
                                    child: Container(
                                        child: videoControlAction(icon: AppIcons.reply, label: "Share", size: 25)))
                              ],
                            ),
                          ),
                          Expanded(
//                  flex: 1,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      print('Hello');
                                      Fluttertoast.showToast(
                                          msg: 'User',
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIos: 1,
//                                backgroundColor: Colors.red,
                                          textColor: Colors.white);
                                    },
                                    child: Container(
                                        child: SpinnerAnimation(body: audioSpinner())))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return Container(
            color: Colors.black,
            child: Stack(
              children: <Widget>[AppVideoPlayer(text: video[1]), onScreenControls()],
            ),
          );
        },
        itemCount: video.length);
  }
}
