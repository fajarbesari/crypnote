import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/repositories/encryptbox_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recycle_encryptbox_provider.g.dart';

@riverpod
Future<List<EncryptBox>> getRecycleEncryptBox(Ref ref) async {
  final encryptboxRepository = locator<EncryptBoxRepository>();

  final userId = ref.watch(currentUserControllerProvider).value?.id;

  if (userId != null) {
    return await encryptboxRepository.recycle(userId);
  }

  return [];
}
