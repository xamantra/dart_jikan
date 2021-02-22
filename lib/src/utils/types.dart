import 'package:meta/meta.dart';

import 'index.dart';

typedef Future<JikanResult<T>> JikanEndpoint<T>({@required int id, Map<String, String> headers});
typedef Future<JikanResult<T>> JikanEndpointPage<T>({@required int id, int page, Map<String, String> headers});
