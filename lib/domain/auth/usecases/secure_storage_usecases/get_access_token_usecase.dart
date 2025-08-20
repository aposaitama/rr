import 'package:rr/data/core/secure_storage/i_secure_storage_service.dart';

class GetTokenUseCase {
  final ISecureStorageService storage;
  GetTokenUseCase(this.storage);

  Future<String?> call() async => await storage.getToken();
}
