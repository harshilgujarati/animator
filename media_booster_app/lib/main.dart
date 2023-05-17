import 'package:flutter/material.dart';
import 'package:media_booster_app/screens/views/song_details.dart';
import 'package:media_booster_app/screens/views/song_homescreen.dart';
import 'package:media_booster_app/screens/views/video_details.dart';
import 'package:media_booster_app/screens/views/video_homescreen.dart';
import 'package:provider/provider.dart';
import 'controllers/providers/media_provider.dart';
import 'controllers/providers/song_providers.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MusicPlayerProvider(),),
        ChangeNotifierProvider(create: (context) => video_provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode:ThemeMode.system,
        routes: {
          '/':(context) => Homepage(),
          'music-play':(context) => MusicPlay(),
          'videolist':(context) => videoList_screen(),
          'video-play':(context) => video_screen(),
        },
      ),
    ),
  );
}
