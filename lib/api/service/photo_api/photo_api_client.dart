import 'package:dio/dio.dart';
import 'package:first_week/api/data/photo_dto.dart';
import 'package:first_week/config/api_urls.dart';
import 'package:retrofit/retrofit.dart';
part 'photo_api_client.g.dart';

/// Client for photo api
@RestApi()
abstract class PhotoApiClient {
  factory PhotoApiClient(Dio dio, {String baseUrl}) = _PhotoApiClient;

  // Photos:
  @GET(ApiUrls.photosGetList)
  Future<List<PhotoDto?>> photoGetList();

  @GET(ApiUrls.photosGetById)
  Future<PhotoDto?> photoGetById(
    @Path('photo_id') int id,
  );
}
