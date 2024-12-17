import 'package:dio/dio.dart';
import '../../constanst/strings.dart';

class CharactersApi {
  late Dio dio;

  CharactersApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(milliseconds: 20 * 1000),
      receiveTimeout: const Duration(milliseconds: 20 * 1000),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      if (response.data != null && response.data['results'] != null) {
        return List.from(response.data['results']);
      } else {
        throw Exception('No characters found');
      }
    } catch (e) {
      throw Exception('Failed to load characters: $e');
    }
  }
}
