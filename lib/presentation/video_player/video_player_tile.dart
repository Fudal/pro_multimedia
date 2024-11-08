import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_multimedia/injections/bloc_factory.dart';
import 'package:pro_multimedia/presentation/video_player/video_player_cubit.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerTile extends StatelessWidget {
  final String videoPath;

  const VideoPlayerTile({required this.videoPath, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VideoPlayerCubit>(
      create: (context) => BlocFactory.of(context).get()..init(videoPath),
      child: const VideoPlayerWidget(),
    );
  }
}

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (_, state) {
        if (state is VideoPlayerLoaded) {
          return FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: state.videoPlayerController.value.size.width,
              height: state.videoPlayerController.value.size.height,
              child: VideoPlayer(state.videoPlayerController),
            ),
          );
        } else {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.transparent,
          );
        }
      },
    );
  }
}
