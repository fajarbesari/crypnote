import 'dart:async';
import 'package:crypnote/features/authentication/providers/current_user_controller.dart';
import 'package:crypnote/features/crypnote/domain/entities/encryptbox.dart';
import 'package:crypnote/features/dashboard/domain/models/dashboard_model.dart';
import 'package:crypnote/core/usesCase/date_and_time_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/locator_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_controller.g.dart';
part 'dashboard_controller.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    int? amount,
    int? destroyed,
    int? waiting,
    int? importance,
    EncryptBox? last,
  }) = _DashboardState;
}

@riverpod
class DashboardController extends _$DashboardController {
  final _dateAndTime = locator<DateAndTimeUseCase>();
  final _dashboard = locator<DashboardModel>();

  @override
  DashboardState build() {
    unawaited(initialize());
    return DashboardState();
  }

  Future<void> initialize() async {
    final userId = ref.watch(currentUserControllerProvider).value?.id;

    if (userId != null) {
      final amount = await _dashboard.total(userId);

      final waiting = await _dashboard.waiting(userId);

      final delete = await _dashboard.deleted(userId);

      final importance = await _dashboard.importance(userId);

      final latest = await _dashboard.latest(userId);

      state = state.copyWith(
        amount: amount,
        waiting: waiting,
        destroyed: delete,
        importance: importance,
        last: latest,
      );
    }
  }

  String get dayTime {
    final dayTime = _dateAndTime.time;
    if (dayTime.contains('AM')) return 'Selamat Pagi ☀️';
    return 'Selamat Malam 🌙';
  }
}
