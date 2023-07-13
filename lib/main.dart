import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/theme_data.dart';
import 'package:toktik/domain/datasource/local_video_data_impl.dart';
import 'package:toktik/infrastructure/repositories/video_post_repositories_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screen/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostRepositImpl(videoDataSource: LocalVideoSource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                DiscoverProvider(videoRepository: videoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeApp().appTheme(),
          title: 'Material App',
          home: const DiscoverScreen()),
    );
  }
}
