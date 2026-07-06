import 'package:crypnote/features/crypnote/providers/current_cipher_controller.dart';
import 'package:crypnote/features/profile/providers/current_profile_image.dart';
import 'package:crypnote/features/profile/providers/current_theme_controller.dart';
import 'package:crypnote/services/encryptor_service.dart';
import 'package:crypnote/core/static/border_radius.dart';
import 'package:crypnote/core/static/spacing.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:crypnote/features/profile/presentation/widgets/setting_action_button.dart';
import 'package:crypnote/features/profile/presentation/widgets/theme_toggle.dart';
import 'package:crypnote/features/profile/presentation/widgets/username_profile.dart';
import 'package:crypnote/widgets/localization_pop_menu.dart';
import 'package:crypnote/widgets/secret_key_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: context.headlineLarge?.copyWith(color: context.onSurface),
        ),
        actions: [ToggleTheme(), SettingActionButton()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: LayoutSpacing.horizontal,
            vertical: LayoutSpacing.vertical,
          ),
          child: Column(
            spacing: LayoutSpacing.marginVertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ChangeProfileImage(),
              SizedBox(height: LayoutSpacing.spacer),
              UserProfile(),
              Preferences(),
            ],
          ),
        ),
      ),
    );
  }
}

class Preferences extends ConsumerWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      decoration: BoxDecoration(
        color: context.surfaceDim,
        borderRadius: BorderRadius.circular(BorderRadiusX.outter),
      ),
      child: Column(
        spacing: LayoutSpacing.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: ElementSpacing.horizontal,
            children: [
              Icon(Icons.settings_applications),
              Text(
                'Preferences',
                style: context.titleLarge?.copyWith(color: context.onSurface),
              ),
            ],
          ),
          EncryptorPreferences(),
          ThemePreferences(),
        ],
      ),
    );
  }
}

class EncryptorPreferences extends ConsumerWidget {
  const EncryptorPreferences({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final encryptor = ref.watch(currentCipherControllerProvider);

    return Column(
      children: [
        Card.outlined(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementSpacing.horizontal,
              vertical: ElementSpacing.vertical,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Algorithm',
                  style: context.titleSmall?.copyWith(color: context.onSurface),
                ),
                Text(
                  encryptor.cipher?.name ?? '',
                  style: context.label?.copyWith(color: context.onSurface),
                ),
              ],
            ),
          ),
        ),
        Card.outlined(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementSpacing.horizontal,
              vertical: ElementSpacing.vertical,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Secret Key',
                    style: context.titleSmall?.copyWith(
                      color: context.onSurface,
                    ),
                  ),
                ),
                SecretKeyView(secretKey: encryptor.secretKey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ThemePreferences extends ConsumerWidget {
  const ThemePreferences({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeControllerProvider);
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ElementSpacing.horizontal,
          vertical: ElementSpacing.vertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Theme Mode',
              style: context.titleSmall?.copyWith(color: context.onSurface),
            ),
            Text(
              theme.name.toUpperCase(),
              style: context.label?.copyWith(color: context.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeProfileImage extends ConsumerWidget {
  const ChangeProfileImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(currentProfileImageProvider.notifier);
    final state = ref.watch(currentProfileImageProvider);

    return InkWell(
      borderRadius: BorderRadius.circular(9999),
      onTap: () => showBottomSheet(
        context: context,
        builder: (context) => SizedBox(
          height: 430,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementSpacing.horizontal,
              vertical: ElementSpacing.vertical,
            ),
            child: ImageGridSelector(
              initialItem: state,
              items: notifier.assets,
              onSelected: (p0) => notifier.changeProfile(p0),
            ),
          ),
        ),
      ),
      child: CircleAvatar(radius: 60, backgroundImage: state),
    );
  }
}

class ImageGridSelector extends HookConsumerWidget {
  ImageGridSelector({
    super.key,
    required this.initialItem,
    required this.items,
    required this.onSelected,
  });

  final AssetImage initialItem;
  final List<AssetImage> items;
  void Function(AssetImage) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState<AssetImage>(initialItem);

    return GridView.count(
      padding: EdgeInsets.symmetric(
        horizontal: ElementSpacing.horizontal,
        vertical: ElementSpacing.vertical,
      ),
      crossAxisCount: 3,
      children: [
        for (var av in items)
          GestureDetector(
            onTap: () {
              selected.value = av;
              onSelected(av);
            },
            child: Container(
              decoration: BoxDecoration(
                border: av == selected.value
                    ? Border.all(color: context.primary!, width: 2)
                    : null,
                borderRadius: BorderRadius.circular(BorderRadiusX.inner),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: ElementSpacing.horizontal,
                vertical: ElementSpacing.vertical,
              ),
              child: CircleAvatar(backgroundImage: av),
            ),
          ),
      ],
    );
  }
}
