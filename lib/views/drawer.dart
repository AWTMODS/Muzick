import 'package:flutter/material.dart';
import 'package:thellop/views/about.dart';
import 'package:thellop/views/privacy.dart';
import 'package:thellop/views/settings.dart';
import 'package:share/share.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 50,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 20),
            child: ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.home_outlined),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("Playlist",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.playlist_play_sharp),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("Favourite",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.favorite),
              onTap: () => Navigator.pop(context),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("Theme Settings",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.settings_outlined),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("Privacy & Policy",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.privacy_tip_outlined),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("About Us",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.contact_support_outlined),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text("Share App",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.share_rounded),
              onTap: () {
                Navigator.pop(context);
                Share.share("https://telegram.me/artwebtech");
              },
            ),
          ),
        ],
      ),
    );
  }
}
