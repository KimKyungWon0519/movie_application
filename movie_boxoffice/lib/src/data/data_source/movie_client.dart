import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_client.g.dart';

@RestApi()
abstract class MovieClient {
  factory MovieClient(Dio dio, {String baseUrl}) = _MovieClient;
}
