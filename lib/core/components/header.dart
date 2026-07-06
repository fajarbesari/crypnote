import 'package:crypnote/core/static/layout_height.dart';
import 'package:crypnote/core/static/text_themize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Header extends ConsumerWidget implements PreferredSizeWidget {
  const Header({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(color: context.surface),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(child: child),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(LayoutHeight.header);
}
