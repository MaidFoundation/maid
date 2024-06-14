import 'package:flutter/material.dart';
import 'package:maid/ui/shared/widgets/dropdowns/llm_dropdown.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: preferredSize.height,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LlmDropdown(),
          trailingWidgets(context)
        ],
      ),
    );
  }

  Widget trailingWidgets(BuildContext context) {
    return Row(
      children: [
        IconButton(
          tooltip: 'App Settings',
          icon: const Icon(Icons.settings), 
          onPressed: () => openAppSettings(context)
        ),
        IconButton(
          tooltip: 'About',
          icon: const Icon(Icons.info), 
          onPressed: () => openAbout(context)
        ),
      ],
    );
  }

  void openAppSettings(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/settings'
    );
  }

  void openAbout(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/about'
    );
  }
}