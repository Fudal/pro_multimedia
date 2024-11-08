import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:pro_multimedia/utils/safe_cubit.dart';
import 'package:video_player/video_player.dart';

part 'video_player_state.dart';

@injectable
class VideoPlayerCubit extends SafeCubit<VideoPlayerState> {
  VideoPlayerCubit() : super(VideoPlayerLoading());

  VideoPlayerController? _videoPlayerController;

  Future<void> init(String videoPath) async {
    try {
      _videoPlayerController = VideoPlayerController
          .asset(videoPath,videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));

      _videoPlayerController?.initialize().then((value) {
        _videoPlayerController?.play();
        _videoPlayerController?.setLooping(true);

        emit(VideoPlayerLoaded(_videoPlayerController!));
      });
    } catch (e, s) {
      debugPrintStack(label: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> close() {
    _videoPlayerController?.dispose();
    return super.close();
  }
}
