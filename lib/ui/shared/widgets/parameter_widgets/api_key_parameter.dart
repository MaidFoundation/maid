import 'package:flutter/material.dart';
import 'package:maid/classes/large_language_model.dart';
import 'package:maid/providers/app_preferences.dart';
import 'package:maid/ui/shared/widgets/tiles/text_field_grid_tile.dart';
import 'package:maid/ui/shared/widgets/tiles/text_field_list_tile.dart';

class ApiKeyParameter extends StatelessWidget {
  const ApiKeyParameter({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(
      text: LargeLanguageModel.of(context).token
    );
    
    if (AppPreferences.of(context).isDesktop) {
      return TextFieldGridTile(
        headingText: "API Key",
        labelText: "API Key",
        controller: controller,
        onChanged: (value) {
          LargeLanguageModel.of(context).token = value;
        }
      );
    }

    return TextFieldListTile(
      headingText: "API Key",
      labelText: "API Key",
      controller: controller,
      onChanged: (value) {
        LargeLanguageModel.of(context).token = value;
      }
    );
  }
}