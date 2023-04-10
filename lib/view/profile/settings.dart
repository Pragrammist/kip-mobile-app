import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/res/theme/theme.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  final double _defaultMarginBottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.black,
          title: Text("Settings")),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text("Downloads"),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                  initialValue: false,
                  onToggle: (value) {},
                  title: Text("Download only using wi-fi")),
              SettingsTile.navigation(
                  title: Text("Quality"), value: Text("Optimal"))
            ],
          ),
          SettingsSection(
            title: Text("Autoplay"),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.autorenew),
                title: Text('Enable autoplay'),
                description: Text(
                    "When you ends up with one episode the next one will be played after 5 seconds"),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.navigation(
                title: Text("Theme"),
                leading: Icon(Icons.theater_comedy),
                value: Text("Dark"),
              )
            ],
          ),
          SettingsSection(title: Text(""), tiles: <SettingsTile>[
            SettingsTile.navigation(title: Text("About app"))
          ])
        ],
      ),
    );
  }
}
