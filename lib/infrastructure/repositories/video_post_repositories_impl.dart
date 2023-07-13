import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repositories.dart';

class VideoPostRepositImpl implements VideoPostRepositories {
  final VideoDataSource videoDataSource;

  VideoPostRepositImpl({required this.videoDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videoDataSource.getTrendingVideoByPage(page);
  }
}
