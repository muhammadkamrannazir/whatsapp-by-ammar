import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/tabs/call.dart';
import 'package:whatsapp_clone/screens/tabs/Chats.dart';
import 'package:whatsapp_clone/screens/tabs/group.dart';
import 'package:whatsapp_clone/screens/setting_screen.dart';
import 'package:whatsapp_clone/screens/tabs/status.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
//  with TickerProviderStateMixin
{
  bool searchclicked = false;
  int _currentIndex = 1; // Store the current index as a member variable

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: _currentIndex,
      child: Scaffold(
        appBar: searchclicked == false
            ? AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color.fromARGB(255, 124, 230, 11),
                title: const Text(
                  "Whatsapp",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      searchclicked = true;
                      setState(() {});
                    },
                    icon: const Icon(Icons.search_outlined),
                  ),
                  PopupMenuButton(
                    onSelected: (value) {
                      if (value == 'Setting') {
                        Get.to(const Settingscreen());
                      }
                    },
                    itemBuilder: (context) {
                      return morehoriz();
                    },
                  ),
                ],
                bottom: TabBar(
                  indicatorSize: _currentIndex == 0
                      ? TabBarIndicatorSize.label
                      : TabBarIndicatorSize.tab,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index; // Update the current index
                    });
                  },
                  tabs: const [
                    SizedBox(
                      width: 25,
                      child: Tab(
                        icon: Icon(Icons.person_add_sharp),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Tab(
                        text: 'Chats', // Show current index on tab 1
                      ),
                    ),
                    SizedBox(
                      child: Tab(
                        text: 'Status', // Show current index on tab 2
                      ),
                    ),
                    Tab(
                      text: 'Calls', // Show current index on tab 3
                    ),
                  ],
                ),
              )
            : AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                title: TextField(
                  autocorrect: true,
                  cursorColor: AppColors.green,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {
                            searchclicked = false;
                            setState(() {});
                          },
                          icon: const Icon(Icons.arrow_back)),
                      focusedBorder: InputBorder.none,
                      hintText: 'Search...',
                      hintStyle: const TextStyle()),
                ),
              ),
        body: TabBarView(
          // controller: TabController(
          //   length: 4,
          //   initialIndex: _currentIndex,
          //   vsync: this,
          // ),
          children: [
            const Groupscreen(),
            Chatscreen(),
            const StatusScreen(),
            const Callscreen(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton:
            _currentIndex != 0 // Show FAB on all tabs except the first tab
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _currentIndex == 2
                          ? FloatingActionButton.small(
                              backgroundColor: Colors.black54,
                              onPressed: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox(),
                      const SizedBox(height: 15),
                      FloatingActionButton(
                        backgroundColor: Colors.green,
                        onPressed: () {},
                        child: Icon(
                          _currentIndex == 1
                              ? Icons.message
                              : _currentIndex == 2
                                  ? Icons.camera_alt_rounded
                                  : Icons.add_ic_call,
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
      ),
    );
  }

  morehoriz() {
    if (_currentIndex == 0) {
      return [
        settingPopUpButton(),
      ];
    } else if (_currentIndex == 1) {
      return [
        const PopupMenuItem(
          value: 'Setting',
          child: Text('New group'),
        ),
        const PopupMenuItem(child: Text('New Broadcast')),
        const PopupMenuItem(child: Text('Linked devices')),
        const PopupMenuItem(child: Text('Starred messages')),
        settingPopUpButton(),
      ];
    } else if (_currentIndex == 2) {
      return [
        const PopupMenuItem(child: Text('Status Privacy')),
        settingPopUpButton(),
      ];
    } else {
      return [
        const PopupMenuItem(child: Text('Clear call log')),
        PopupMenuItem(
          value: 'Setting',
          onTap: () {
            Get.to(const Settingscreen());
          },
          child: const Text('Setting'),
        ),
      ];
    }
  }

  PopupMenuEntry settingPopUpButton() {
    return PopupMenuItem(
      value: 'Setting',
      onTap: () {
        Get.off(() => const Settingscreen());
        print('something');
      },
      child: const Text('Setting'),
    );
  }
}
