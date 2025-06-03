import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
//This code defines a singleton-style factory class for creating 
//and configuring a single instance of the Dio HTTP client in your Flutter app.
class DioFactory {
  DioFactory._();
  static Dio? dio;

static Dio getDio()  {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = const Duration(seconds: 30);
      dio!.options.receiveTimeout = const Duration(seconds: 30);
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;

      // Configure the Dio instance here if needed
      // For example, set base options, interceptors, etc.
    }
     
  }
  static void addDioInterceptor(){
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true, 
        responseBody: true,
        error: true,
        compact: false,
      ),
    );
  }

  // Add methods to create and configure Dio instances here
  // For example:
  // Dio createDio() {
  //   final dio = Dio();
  //   // Configure dio instance
  //   return dio;
  // }
}