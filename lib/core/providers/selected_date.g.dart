// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_date.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedDate)
final selectedDateProvider = SelectedDateFamily._();

final class SelectedDateProvider
    extends $NotifierProvider<SelectedDate, DateTime?> {
  SelectedDateProvider._({
    required SelectedDateFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'selectedDateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$selectedDateHash();

  @override
  String toString() {
    return r'selectedDateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SelectedDate create() => SelectedDate();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedDateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$selectedDateHash() => r'6a7bcda0154738f17c0e67a4457631be976d962e';

final class SelectedDateFamily extends $Family
    with
        $ClassFamilyOverride<
          SelectedDate,
          DateTime?,
          DateTime?,
          DateTime?,
          String
        > {
  SelectedDateFamily._()
    : super(
        retry: null,
        name: r'selectedDateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SelectedDateProvider call(String id) =>
      SelectedDateProvider._(argument: id, from: this);

  @override
  String toString() => r'selectedDateProvider';
}

abstract class _$SelectedDate extends $Notifier<DateTime?> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  DateTime? build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DateTime?, DateTime?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime?, DateTime?>,
              DateTime?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
