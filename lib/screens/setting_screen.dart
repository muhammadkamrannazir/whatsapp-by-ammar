import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        title: const Text('Setting'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/3.png'),
              ),
              title: const Text(
                'Coleridge',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text(
                'never lose hope',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.qrcode,
                    size: 26,
                    color: Colors.green,
                  )),
            ),
            Container(
              color: Colors.black45,
              height: 0.1,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                mylisttile(
                  Icons.key,
                  'Account',
                  'Security notifications,change number',
                  () {},
                ),
                mylisttile(
                  Icons.lock,
                  'Privacy',
                  'BLock contacts, disappearing messages',
                  () {},
                ),
                mylisttile(
                  Icons.emoji_emotions,
                  'Avatar',
                  'Create, edit, profile photo',
                  () {},
                ),
                mylisttile(
                  Icons.message,
                  'Chats',
                  'Theme, wallpapers,chat history',
                  () {},
                ),
                mylisttile(
                  Icons.notifications,
                  'Notifications',
                  'Message,group & call tones',
                  () {},
                ),
                mylisttile(
                  Icons.data_saver_off,
                  'Storage and data',
                  'Network usage, auto-download',
                  () {},
                ),
                mylisttile(
                  Icons.language,
                  'App language',
                  'English(devices language)',
                  () {},
                ),
                mylisttile(
                  Icons.help_outline_sharp,
                  'help',
                  'Help centre, contact us, privacy policy',
                  () {},
                ),
                mylisttile(
                  Icons.person_add_alt_sharp,
                  'Invite a friend',
                  '',
                  () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mylisttile(
      IconData iconData, String text, String subtext, void Function()? onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        color: AppColors.blueGrey,
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Text(
        subtext,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
