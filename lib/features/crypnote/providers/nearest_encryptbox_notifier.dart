import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/features/crypnote/domain/models/nearest_encryptbox_model.dart';
import 'package:crypnote/features/crypnote/providers/current_nearest_encryptbox_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nearest_encryptbox_notifier.g.dart';

@riverpod
class NearestEncryptBoxNotifier extends _$NearestEncryptBoxNotifier {
  final _nearest = locator<NearestEncryptBoxModel>();

  @override
  Stream<NearestFlow> build() async* {
    final current = ref.watch(currentNearestEncryptBoxControllerProvider);

    final stream = _nearest.nearestFlowing(current.encryptBox);

    await for (var near in stream) {
      await Future.delayed(Duration(seconds: 1));

      yield near;
    }
  }
}
