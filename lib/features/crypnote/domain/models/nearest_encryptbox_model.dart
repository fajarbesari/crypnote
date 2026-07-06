import 'dart:developer';

import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/core/locator_service.dart';
import 'package:crypnote/repositories/encryptbox_repository.dart';

class NearestEncryptBoxModel {
  final _encryptBoxRepository = locator<EncryptBoxRepository>();

  static const elapsedTime = Duration(minutes: 1);
  static const destroyedTime = Duration(seconds: 10);

  Future<EncryptBox?> get(int userId) async {
    try {
      final encryptBoxes = await _encryptBoxRepository.get(userId);
      final encryptBox = encryptBoxes.lastWhere(
        (e) => e.scheduleAt != null && e.scheduleAt!.isAfter(DateTime.now()),
      );

      return encryptBox;
    } catch (e) {
      return null;
    }
  }

  Stream<NearestFlow> nearestFlowing(EncryptBox? encryptBox) async* {
    yield switch (encryptBox) {
      EncryptBox() => NearestFlow.fromScheduleAt(encryptBox.scheduleAt),
      null => NearestFlow.nothing,
    };
  }

  Future<void> destroy(EncryptBox encryptBox) async {
    final destroyed = await _encryptBoxRepository.destroyById(encryptBox.id!);

    log(destroyed.toString());
  }
}

enum NearestFlow {
  nothing,
  waiting,
  elapsed,
  destroy;

  const NearestFlow();

  static NearestFlow fromScheduleAt(DateTime? scheduleAt) {
    final now = DateTime.now();

    if (scheduleAt == null) return NearestFlow.nothing;

    final elapsedTime = scheduleAt.add(NearestEncryptBoxModel.elapsedTime);
    final destroyedTime = elapsedTime.add(NearestEncryptBoxModel.destroyedTime);

    if (scheduleAt.isAfter(now)) {
      return NearestFlow.waiting;
    } else if (now.isAfter(scheduleAt) && now.isBefore(elapsedTime)) {
      return NearestFlow.elapsed;
    } else if (now.isAfter(elapsedTime) && now.isBefore(destroyedTime)) {
      return NearestFlow.destroy;
    } else if (now.isAfter(destroyedTime)) {
      return NearestFlow.nothing;
    }

    throw UnsupportedError('Unknown Nearest Flow');
  }
}
