import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PdfUpsertCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? files,
    String? question = 'What is this document about',
    String? metadata = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pdfUpsert',
      apiUrl:
          'http://ec2-13-233-100-159.ap-south-1.compute.amazonaws.com:3000/api/v1/prediction/f90a6e64-96fd-4c3c-9ade-a06bcba2470b',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'files': files,
        'question': question,
        'metadata': metadata,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WebsiteUpsertCall {
  static Future<ApiCallResponse> call({
    String? question = 'What is this website about?',
    String? url = '',
    String? namespace = '',
  }) async {
    final ffApiRequestBody = '''
{
  "overrideConfig": {
    "url": "${url}",
    "metadata": {
      "namespace": "${namespace}"
    }
  },
  "question": "${question}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'websiteUpsert',
      apiUrl:
          'http://ec2-13-233-100-159.ap-south-1.compute.amazonaws.com:3000/api/v1/prediction/00ce416c-5f4c-4c71-b95c-5f7633262751',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UniversalQueryCall {
  static Future<ApiCallResponse> call({
    String? question = '',
    String? namespace = '',
  }) async {
    final ffApiRequestBody = '''
{
  "overrideConfig": {
    "superbaseMetadataFilter": {
      "namespace": "${namespace}"
    }
  },
  "question": "${question}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'universalQuery',
      apiUrl:
          'http://ec2-13-233-100-159.ap-south-1.compute.amazonaws.com:3000/api/v1/prediction/bdce79cb-39ea-4487-8fd6-9a83608d0452',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
