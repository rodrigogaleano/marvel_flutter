class ApiHost {
  ApiHost._();

  static String get baseURL {
    return 'http://gateway.marvel.com$apiVersion/public';
  }

  static String get apiVersion => '/v1';

  static String get timestamp {
    // TODO: Verify the API auth issues
    // final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    // return timestamp;
    return '1694890946379';
  }

  static String get apiKey {
    return '89c734933d38e072ff1d8e8e9dbcc7d4';
  }

  // TODO: Verify the API auth issues
  // static String get _privateKey {
  //   return '8143653f6b2e2b721ca01dc3f523b1a2680f310f';
  // }

  static String get hash {
    // TODO: Verify the API auth issues
    // final bytes = utf8.encode(timestamp + _privateKey + apiKey);
    // final digest = md5.convert(bytes);
    // return digest.toString();
    return '8bc4b19e412c1df78cbe21e70d95cdc4';
  }
}
