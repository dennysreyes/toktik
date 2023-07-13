import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_post_repositories_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepositImpl videoRepository;
  bool initialLoading = true;
  List<VideoPost> video = [];

  DiscoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {
    final newVideo = await videoRepository.getTrendingVideoByPage(1);

    video.addAll(newVideo);
    initialLoading = false;
    notifyListeners();
  }
}
