import 'package:flutter/material.dart';
import 'package:kip_mobile/models/profile.dart';
import 'package:kip_mobile/view/profile/settings.dart';
import 'package:kip_mobile/view/widget/auth_sheet.dart';
import 'package:kip_mobile/view/widget/profile_info.dart';
import 'package:kip_mobile/view/widget/video_player.dart';
import 'package:kip_mobile/view_model/profile_view_model.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:video_player/video_player.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildSettingsList() {
    return Column(children: [
      SettingsList(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                title: Text('Настройки'),
              ),
              SettingsTile.navigation(
                title: Text('О приложении'),
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileViewModel>(context, listen: false);

    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(children: [
              ListView(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ProfileInfo(
                    login: profile.userName,
                    email: profile.userEmail,
                  ),
                ),
                _buildSettingsList(),
                //AuthSheet(),
                //TextButton(
                //    onPressed: () {},
                //    child: Text(
                //      "Выйти из аккаунта",
                //      style: TextStyle(color: Colors.white),
                //    ))
              ]),
            ])),
      ),
    );
  }
}
