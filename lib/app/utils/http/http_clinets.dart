import 'dart:convert';

import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/enums.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MyHttpClients {
  static const String baseUrlLive = 'sample.live.com';
  static const String baseUrlLocalhost = 'localhost:5000';
  static const String midPoint = "/api/v1";

  // Private method to handle requests ////////////
  Future<http.Response> _request({
    required String endpoint,
    required Enum method,
    Map<String, String>? headers,
    dynamic body,
    Map<String, String>? params,
  }) async {
    // final uri =  Uri.https(baseUrlLive,midPoint+endpoint);
    final uri = Uri.http(baseUrlLocalhost, midPoint + endpoint, params);

    final defaultHeaders = {'Content-Type': 'application/json'};
    final mergedHeaders = {...defaultHeaders, ...?headers};

    switch (method) {
      case HttpMethods.get:
        return await http.get(uri, headers: mergedHeaders);
      case HttpMethods.post:
        return await http.post(uri,
            headers: mergedHeaders, body: jsonEncode(body));
      case HttpMethods.put:
        return await http.put(uri,
            headers: mergedHeaders, body: jsonEncode(body));
      case HttpMethods.patch:
        return await http.patch(uri,
            headers: mergedHeaders, body: jsonEncode(body));
      case HttpMethods.delete:
        return await http.delete(uri, headers: mergedHeaders);
      default:
        throw Exception('Invalid HTTP method');
    }
  }

  // Public methods for each HTTP verb ////////////
  Future<http.Response> get(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, String>? params,
  }) {
    return _request(
        endpoint: endpoint,
        method: HttpMethods.get,
        headers: headers,
        params: params);
  }

  Future<http.Response> post(String endpoint,
      {Map<String, String>? headers, dynamic body}) {
    return _request(
        endpoint: endpoint,
        method: HttpMethods.post,
        headers: headers,
        body: body);
  }

  Future<http.Response> put(String endpoint,
      {Map<String, String>? headers, dynamic body}) {
    return _request(
        endpoint: endpoint,
        method: HttpMethods.put,
        headers: headers,
        body: body);
  }

  Future<http.Response> patch(String endpoint,
      {Map<String, String>? headers, dynamic body}) {
    return _request(
        endpoint: endpoint,
        method: HttpMethods.patch,
        headers: headers,
        body: body);
  }

  Future<http.Response> delete(String endpoint,
      {Map<String, String>? headers}) {
    return _request(
        endpoint: endpoint, method: HttpMethods.delete, headers: headers);
  }

}
