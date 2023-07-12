import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: repository, dataSource

  bool initialLoading = true;
  List<VideoPost> video = [];

  Future<void> loadNextPage() async {
    //TODO: cargarVideo()

    notifyListeners();
  }
}
