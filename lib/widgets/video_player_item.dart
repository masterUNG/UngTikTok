// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:ungtiktok/models/videos_model.dart';

class VideoPlayerItem extends StatefulWidget {
  final int indexVideo;
  final VideosModel videosModel;
  const VideoPlayerItem({
    Key? key,
    required this.indexVideo,
    required this.videosModel,
  }) : super(key: key);
  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  int? indexVideo;
  VideosModel? videosModel;

  @override
  void initState() {
    super.initState();

    indexVideo = widget.indexVideo;
    videosModel = widget.videosModel;

    videoPlayerController = VideoPlayerController.network(videosModel!.videourl)
      ..initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController!,
      autoPlay: true,
    );

    chewieController!.play();
    chewieController!.setLooping(true);
   

    // var myendFunc = widget.endFunc;

    // videoPlayerController.addListener(() {
    //   if (videoPlayerController.value.duration ==
    //       videoPlayerController.value.position) {
    //     print('######## video End indexVideo ==> $indexVideo');

    //     if (indexVideo + 1 >= dataModels.length) {
    //       indexVideo = 0;
    //     }
    //     setState(() {
    //       videoPlayerController =
    //           VideoPlayerController.network(dataModels[indexVideo + 1].videourl)
    //             ..initialize().then((value) {
    //               videoPlayerController.play();
    //               videoPlayerController.setVolume(0.1);
    //             });
    //     });
    //   }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController!.dispose();
    chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return SizedBox(
        width: constaints.maxWidth,
        height: constaints.maxHeight,
        child: Chewie(controller: chewieController!),
      );
    });
  }
}
