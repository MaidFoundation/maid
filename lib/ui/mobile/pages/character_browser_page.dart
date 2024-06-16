import 'package:flutter/material.dart';
import 'package:maid/providers/app_data.dart';
import 'package:maid/providers/character.dart';
import 'package:maid/ui/mobile/widgets/session_busy_overlay.dart';
import 'package:maid/ui/shared/widgets/characters_grid_view.dart';
import 'package:provider/provider.dart';

class CharacterBrowserPage extends StatelessWidget {
  const CharacterBrowserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: pageBuilder
    );
  }

  Widget pageBuilder(BuildContext context, AppData appData, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Character Browser"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              appData.currentCharacter = Character();
            },
          ),
        ],
      ),
      body: const SessionBusyOverlay(
        child: CharactersGridView(),
      )
    );
  }
}