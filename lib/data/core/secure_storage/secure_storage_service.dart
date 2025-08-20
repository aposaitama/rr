import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'i_secure_storage_service.dart';

class SecureStorageService implements ISecureStorageService {
  final _storage = const FlutterSecureStorage();
  static const _tokenKey = 'access_token';

  @override
  Future<void> saveToken(
    String token,
  ) async {
    await _storage.write(
      key: _tokenKey,
      value: token,
    );
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(
      key: _tokenKey,
    );
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(
      key: _tokenKey,
    );
  }
}
