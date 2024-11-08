part of 'video_player_cubit.dart';

abstract class VideoPlayerState extends Equatable {
  const VideoPlayerState();
}

class VideoPlayerLoading extends VideoPlayerState {
  @override
  List<Object> get props => [];
}

class VideoPlayerError extends VideoPlayerState {
  @override
  List<Object> get props => [];
}

class VideoPlayerLoaded extends VideoPlayerState {
  final VideoPlayerController videoPlayerController;

  const VideoPlayerLoaded(this.videoPlayerController);

  @override
  List<Object> get props => [videoPlayerController];
}
