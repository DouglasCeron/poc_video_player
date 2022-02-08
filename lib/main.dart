import 'package:flutter/material.dart';
import 'package:poc_video_player/cast.dart';
import 'package:poc_video_player/chewie_class.dart';
import 'package:poc_video_player/data/data_source/fetch_video_remote.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  FetchVideoRemoteData fetchVideo = FetchVideoRemoteData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 290,
            child: ChewieClass(),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => fetchVideo.downloadFile(),
            child: Text('DownLoad Video'),
          )
        ],
      ),
    );
  }
}
