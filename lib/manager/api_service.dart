import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import '../model/anime_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("v4/anime")
  Future<AnimeResponse> getAnimes();

  @GET("v4/random/anime")
  Future<AnimeResponse> getRandomAnimes();

  @GET("v4/anime")
  Future<AnimeResponse> searchAnimes(String query);

  @GET("v4/top/anime")
  Future<AnimeResponse> getTopAnimes();

}
Dio buildDioClient(String base){
  final dio = Dio()..options = BaseOptions(baseUrl:  base);

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90
    )
  );
  return dio;
}

// https://api.jikan.moe/v4/anime
// https://api.jikan.moe/v4/top/anime
// https://api.jikan.moe/v4/random/anime
