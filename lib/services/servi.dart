import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:getdatas/modal/modal.dart';

// class fetchServices {
//   final getUrl = 'https://jsonplaceholder.org/users/1';
//   Dio dio = Dio();

//   Future<List<GetUser>> getUseDetails() async {
//     try {
//       final response = await dio.get(getUrl);
//       log(response.toString());
//       if (response.statusCode == 200) {
//         return GetUser.fromJson(response.data);
//       } else {
//         throw Exception('notfound');
//       }
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
// }
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:getdatas/modal/modal.dart';

class FetchServices {
  final String getUrl = 'https://jsonplaceholder.org/users/1';
  Dio dio = Dio();

  Future<GetUser> getUseDetails() async {
    try {
      final response = await dio.get(getUrl);
      log(response.toString());
      if (response.statusCode == 200) {
        return GetUser.fromJson(response.data);
      } else {
        throw Exception('Failed to load user details');
      }
    } catch (e) {
      log('Error: $e');
      throw Exception('Error fetching data');
    }
  }
}
