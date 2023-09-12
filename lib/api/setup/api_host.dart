import 'dart:convert';

import 'package:crypto/crypto.dart';

class ApiHost {
  ApiHost._();

  static String get baseURL {
    return 'http://gateway.marvel.com$apiVersion/public';
  }

  static String get apiVersion => '/v1';

  static String get timestamp {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    return timestamp;
  }

  static String get apiKey {
    return '89c734933d38e072ff1d8e8e9dbcc7d4';
  }

  static String get privateKey {
    return '8143653f6b2e2b721ca01dc3f523b1a2680f310f';
  }

  static String get hash {
    final bytes = utf8.encode(timestamp + privateKey + apiKey);
    final digest = md5.convert(bytes);
    return digest.toString();
  }
}
