import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video_provider extends ChangeNotifier {

  List VideoList = [
    "https://www.youtube.com/shorts/YYXStxF0zVY",
    "https://www.youtube.com/shorts/YYXStxF0zVY",
    "https://www.youtube.com/shorts/YYXStxF0zVY",
    "https://www.youtube.com/shorts/YYXStxF0zVY",
    "https://www.youtube.com/shorts/YYXStxF0zVY",
  ];

  List images = [
    "assets/images/WhatsApp Image 2023-05-15 at 11.34.16 AM.jpeg",
    "assets/images/WhatsApp Image 2023-05-15 at 11.34.17 AM.jpeg",
    "assets/images/WhatsApp Image 2023-05-15 at 11.34.17 AM (1).jpeg",
    "assets/images/WhatsApp Image 2023-05-15 at 11.34.18 AM.jpeg",
    "assets/images/WhatsApp Image 2023-05-15 at 11.34.19 AM (1).jpeg",

  ];

  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  int selectedVideoIndex = 0;

  void initVideo() {

    videoPlayerController = VideoPlayerController.network("${VideoList[selectedVideoIndex]}");
    videoPlayerController?.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false);
  }

  void changeIndex(int index)
  {
    selectedVideoIndex = index;
    notifyListeners();
  }
}
