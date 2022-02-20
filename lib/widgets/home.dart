import 'package:chewie/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ungtiktok/models/videos_model.dart';
import 'package:ungtiktok/widgets/show_progress.dart';
import 'package:ungtiktok/widgets/show_text.dart';
import 'package:ungtiktok/widgets/video_player_item.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool load = true;
  var videosModels = <VideosModel>[];

  @override
  void initState() {
    super.initState();
    readAllVideo();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> readAllVideo() async {
    await FirebaseFirestore.instance.collection('videos').get().then((value) {
      for (var item in value.docs) {
        VideosModel model = VideosModel.fromMap(item.data());
        videosModels.add(model);
      }

      setState(() {
        load = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: load
          ? const ShowProgress()
          : PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: videosModels.length,
              itemBuilder: (context, index) => VideoPlayerItem(
                indexVideo: index,
                videosModel: videosModels[index],
              ),
            ),
    );
  }
}
