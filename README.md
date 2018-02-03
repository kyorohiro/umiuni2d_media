# umiuni2d_media

Audio library for HTML5 and Flutter.

# Flutter
https://github.com/kyorohiro/umiuni2d_media_flutter/

# Html
https://github.com/kyorohiro/umiuni2d_media_html5/


# About

This library has tiny interface.

```
library umiuni2d_media;

import 'dart:async';

abstract class MediaManager {
  String get assetsRoot;
  Future<MediaManager> setupMedia(String path);
  Future<AudioPlayer> loadAudioPlayer(String playerId, String path);
  Future<AudioPlayer> createAudioPlayer(String playerId, String path);
  AudioPlayer getAudioPlayer(String id);
}

abstract class AudioPlayer {
  String get playerId;
  String get url;
  Future<AudioPlayer> prepare();
  Future<double> getCurrentTime();
  Future<AudioPlayer> seek(double currentTime);
  Future<AudioPlayer> play();
  Future<AudioPlayer> pause();
  FutureOr<AudioPlayer> stop();
  Future<double> getVolume();
  void setVolume(double v);
}
```
