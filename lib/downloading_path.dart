import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Downloading extends StatefulWidget {
  const Downloading({super.key});

  @override
  State<Downloading> createState() => _DownloadingState();
}

class _DownloadingState extends State<Downloading> {
  Dio dio = Dio();
  double progress = 0.0;
  void startdownloading() async {
    const String url =
        'https://www.freepik.com/free-photo/old-black-background-grunge-texture-dark-wallpaper-blackboard-chalkboard-room-wall_11712558.htm#query=black&position=0&from_view=keyword&track=sph';
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
