import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoDataSource {
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId);
  Future<List<VideoPost>> getTrendingVideoByPage(int page);
}
