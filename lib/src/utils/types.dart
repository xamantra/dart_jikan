import 'index.dart';

typedef Future<JikanResult<T>> JikanEndpoint<T>(int animeId,
    {Map<String, String> headers});
typedef Future<JikanResult<T>> JikanEndpointPage<T>(int animeId,
    {int page, Map<String, String> headers});
