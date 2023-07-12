import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_models.dart';
import 'package:toktik/shared/data/local_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: repository, dataSource

  bool initialLoading = true;
  List<VideoPost> video = [];

  Future<void> loadNextPage() async {
    //TODO: cargarVideo()

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).videoPostEntity())
        .toList();

    video.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
