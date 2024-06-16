import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'options_screen.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen(
      {super.key,
      required this.video,
      required this.username,
      required this.comments,
      required this.likes,
      required this.shares, required this.name});

  final String video;
  final String username;
  final int comments;
  final int likes;
  final String shares;
  final String name;

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(widget.video);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
                controller: _chewieController!,
              )
            : SizedBox(),
        SizedBox(
          height: 560,
        ),
        infoContainer(
          context: context,
          username: widget.username,
          com: widget.comments,
          likes: widget.likes,
          share: widget.shares,
          video: widget.video,
          name: widget.name,
        ),
      ],
    );
  }
}
