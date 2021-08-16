// @dart=2.9

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptor/logging_interceptor.dart';

final Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()]
);
const String baseUrl = '192.168.15.51';
const String api = 'api/v1/pessoas';


