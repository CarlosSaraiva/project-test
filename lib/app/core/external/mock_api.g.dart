// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MockApiClient implements MockApiClient {
  _MockApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://5f5925cd8040620016ab8e74.mockapi.io';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getUsers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/users',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => UserModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
