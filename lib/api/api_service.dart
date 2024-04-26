import 'package:dio/dio.dart';
import 'package:tarea3boredapidio/models/bored.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<BoredActivity> getAllBoredActivity() async {
    try {
      final response = await _dio.get('http://www.boredapi.com/api/activity');
      
      if (response.statusCode == 200) {
        final jsonData = response.data;
        return BoredActivity.fromJson(jsonData);
      } else {
        throw Exception('Failed to load activity');
      }
    } catch (e) {
      throw Exception('Error fetching activity: $e');
    }
  }
}
