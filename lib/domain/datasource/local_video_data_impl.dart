import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../infrastructure/models/local_video_models.dart';
import '../../shared/data/local_post.dart';

class LocalVideoSource implements VideoDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).videoPostEntity())
        .toList();

    return newVideos;
  }
}
