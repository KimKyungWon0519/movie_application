import 'package:dio/dio.dart';
import 'package:movie_boxoffice/core/contants/movie_api_urls.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_client.g.dart';

@RestApi(baseUrl: MovieApiUrls.baseUrl)
abstract class MovieClient {
  factory MovieClient(Dio dio, {String baseUrl}) = _MovieClient;
}
