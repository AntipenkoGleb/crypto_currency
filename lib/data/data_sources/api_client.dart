import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const baseUrl = 'https://api.coincap.io/v2';

const assetsUrl = 'https://assets.coincap.io/assets';

const connectionTimeoutDuration = Duration(seconds: 3);

@Injectable()
class DioApiClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      connectTimeout: connectionTimeoutDuration,
    ),
  );

  Future<Response<T>> get<T>(
    String endpoint, {
    Map<String, dynamic>? params,
  }) async {
    return _dio.get(endpoint, queryParameters: params);
  }

  static getImageAssetUrl(String symbol) {
    return '$assetsUrl/icons/${symbol.toLowerCase()}@2x.png';
  }
}
