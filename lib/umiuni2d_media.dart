library umiuni2d_media;

import 'dart:async';

abstract class MediaManager {
  String get assetsRoot;
  Future<MediaManager> setupMedia(String path);
  Future<AudioPlayer> loadAudioPlayer(String playerId, String path);
  Future<AudioPlayer> createAudio(String playerId, String path);
  AudioPlayer getAudioPlayer(String id);
}

abstract class AudioPlayer {
  String get plyerId;
  String get url;
  Future<AudioPlayer> prepare();
  Future<double> getCurrentTime();
  Future<AudioPlayer> seek(double currentTime);
  Future<AudioPlayer> play({double currentTime=null});
  Future<AudioPlayer> pause();
  FutureOr<AudioPlayer> stop();
  Future<double> getVolume();
  void setVolume(double v);
}