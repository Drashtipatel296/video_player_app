# Video Player App (Snapchat shorts)

Welcome to the Shorts Scrolling App! This Flutter application allows users to scroll through short video reels, similar to Instagram Reels. The app features a play/pause button in the bottom navigation bar, as well as on-screen mute/unmute options for each reel.

This app is built using the following Flutter packages:

- **provider**: A wrapper around InheritedWidget to make state management easy.
- **video_player**: A Flutter plugin for displaying inline video with other Flutter widgets.
- **chewie**: A video player for Flutter that provides a uniform interface for video playback, making it easy to customize the player controls.
- **card_swiper**: A card swiper widget for Flutter that makes it easy to create swipeable cards, used here to navigate between reels.

## Step-by-Step Guide

### 1. Add Dependencies

First, add the video_player and chewie packages to your pubspec.yaml file. The chewie package provides additional controls and functionalities over the basic video_player package.

```yaml
dependencies:
  flutter:
    sdk: flutter
  video_player: ^2.4.5
  chewie: ^1.3.4
```

Run flutter pub get to install the new dependencies.

### 2. Basic Implementation

Create a new Dart file (e.g., video_player_screen.dart) and implement the video player functionality.

```dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
      'https://www.example.com/path/to/your/video.mp4',
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      // Optional parameters for more customization
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      placeholder: Container(
        color: Colors.grey,
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: _chewieController != null &&
                _chewieController.videoPlayerController.value.isInitialized
            ? Chewie(
                controller: _chewieController,
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
```

### 3. Main Dart File

Ensure your main file includes a reference to the new video player screen.

```dart
import 'package:flutter/material.dart';
import 'video_player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoPlayerScreen(),
    );
  }
}
```

### Explanation

1. **Dependencies** : The video_player package is used to handle video playback, while chewie adds additional UI controls and customization options.
2. **VideoPlayerController** : Initializes and manages the video from a network source. You can also use local assets or files by using VideoPlayerController.asset or VideoPlayerController.file.
3. **ChewieController** : Wraps around the VideoPlayerController to provide more functionalities like aspect ratio, auto-play, looping, and customized UI.
4. **Lifecycle Management** : Properly disposes of the controllers to free up resources when they are no longer needed.
5. **UI** : Displays a loading indicator until the video is initialized and ready for playback.

### Features

**Volume Control**
**Looping Playback**
**Share video**

### ScreenShort

<p align='center'>
  <img src='https://github.com/Drashtipatel296/video_player_app/assets/143180636/9605a3e0-3c5c-45e4-8c2a-e886838a0c88' width=240>
  <img src='https://github.com/Drashtipatel296/video_player_app/assets/143180636/c42cdbdd-f366-44c2-86b0-2d02992cd009' width=240>
  <img src='https://github.com/Drashtipatel296/video_player_app/assets/143180636/9f6c5420-6736-4b37-99f6-f93cf102d678' width=240>
  <img src='https://github.com/Drashtipatel296/video_player_app/assets/143180636/89f7745d-e70b-458d-915e-96f59a660371' width=240>
  <img src='https://github.com/Drashtipatel296/video_player_app/assets/143180636/a3ff8ef3-bb98-49db-93de-dbb7817ff3cf' width=240>
</p>

### Video


https://github.com/Drashtipatel296/video_player_app/assets/143180636/5a0c00de-0a27-462d-a14e-8c5dc7e7f411





















