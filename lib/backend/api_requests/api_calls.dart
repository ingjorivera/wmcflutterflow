import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ObtenerTokenCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "username": "jorivera@gmail.com",
  "password": "321"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Obtener Token',
      apiUrl: 'https://backend.wmarketcompany.com/wp-json/jwt-auth/v1/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic rol(dynamic response) => getJsonField(
        response,
        r'''$.rol''',
      );
  static dynamic apellido(dynamic response) => getJsonField(
        response,
        r'''$.apellido''',
      );
  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class ValidarTokenCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Validar Token',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/jwt-auth/v1/token/validate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjY0OTgsIm5iZiI6MTY2NzA2NjQ5OCwiZXhwIjoxNjY3NjcxMjk4LCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.934EiPjDiB5CtFTAVAHZ5vPrw4StaBi7PsN94JFbWns',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class RegistroUsuarioCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "username": "jm@m.com",
  "password": "123",
  "email": "jm@m.com",
  "fname": "fname",
  "lname": "lname"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registro Usuario',
      apiUrl: 'https://backend.wmarketcompany.com/wp-json/wp/v2/users/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
}

class RestaurarPasswordCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "email": "jorivera@gmai.com"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurar password',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/bdpwr/v1/reset-password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class ValidarCodigoRestaurarCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "email": "jorivera@gmail.com",
  "code": "142"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Validar Codigo Restaurar',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/bdpwr/v1/validate-code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'applicacion/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class ListarCursosCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar cursos',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/ldlms/v2/sfwd-courses',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic titulo(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      );
  static dynamic uRLThumb(dynamic response) => getJsonField(
        response,
        r'''$[:].better_featured_image.media_details.sizes.thumbnail.source_url''',
        true,
      );
  static dynamic uRLLarge(dynamic response) => getJsonField(
        response,
        r'''$[:].better_featured_image.media_details.sizes.medium.source_url''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class CursosPorUsuarioCall {
  static Future<ApiCallResponse> call({
    int? id = 1,
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjg2NDEsIm5iZiI6MTY2NzA2ODY0MSwiZXhwIjoxNjY3NjczNDQxLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.xPWFJlPnJXKPJAleQlp5rkfcNnKdpRxQKU-dGSdNnUs',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Cursos por usuario',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/ldlms/v2/users/1/courses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjg2NDEsIm5iZiI6MTY2NzA2ODY0MSwiZXhwIjoxNjY3NjczNDQxLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.xPWFJlPnJXKPJAleQlp5rkfcNnKdpRxQKU-dGSdNnUs',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class ListarLeccionesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar Lecciones',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/ldlms/v2/sfwd-lessons',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjkzNzAsIm5iZiI6MTY2NzA2OTM3MCwiZXhwIjoxNjY3Njc0MTcwLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.eUGr3Ef3dKe4_paZMBhhyQsw9fjXvjVweKi24j1OIVw',
      },
      params: {
        'course': "142",
      },
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic titulo(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      );
  static dynamic contenido(dynamic response) => getJsonField(
        response,
        r'''$[:].content.rendered''',
        true,
      );
}

class ListarTopicosCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar Topicos',
      apiUrl: 'https://backend.wmarketcompany.com/wp-json/ldlms/v2/sfwd-topic',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjkzNzAsIm5iZiI6MTY2NzA2OTM3MCwiZXhwIjoxNjY3Njc0MTcwLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.eUGr3Ef3dKe4_paZMBhhyQsw9fjXvjVweKi24j1OIVw',
      },
      params: {
        'lesson': "220",
      },
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic titulo(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  static dynamic contenido(dynamic response) => getJsonField(
        response,
        r'''$[:].content.rendered''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class ProgresoCursoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Progreso Curso',
      apiUrl:
          'https://backend.wmarketcompany.com/wp-json/ldlms/v2/users/1/course-progress',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYmFja2VuZC53bWFya2V0Y29tcGFueS5jb20iLCJpYXQiOjE2NjcwNjkzNzAsIm5iZiI6MTY2NzA2OTM3MCwiZXhwIjoxNjY3Njc0MTcwLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.eUGr3Ef3dKe4_paZMBhhyQsw9fjXvjVweKi24j1OIVw',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].course''',
        true,
      );
  static dynamic totalPasos(dynamic response) => getJsonField(
        response,
        r'''$[:].steps_total''',
        true,
      );
  static dynamic pasosCompletados(dynamic response) => getJsonField(
        response,
        r'''$[:].steps_completed''',
        true,
      );
  static dynamic estadoProgreso(dynamic response) => getJsonField(
        response,
        r'''$[:].progress_status''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
