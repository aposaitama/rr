abstract class ISecureStorageService {
  Future<void> saveToken(
    String token,
  );
  Future<String?> getToken();
  Future<void> deleteToken();
}
