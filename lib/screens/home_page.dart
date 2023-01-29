import 'package:bus_ticketing_admin/screens/tabs/rides_tab.dart';
import 'package:bus_ticketing_admin/screens/tabs/users_tab.dart';
import 'package:bus_ticketing_admin/widgets/text_widget.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  SideMenuController page1 = SideMenuController(initialPage: 0);
  PageController page = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Card(
        child: Container(
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                // Page controller to manage a PageView
                controller: page1,
                // Will shows on top of all items, it can be a logo or a Title text
                title: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child: BoldText(
                      label: 'ADMIN PORTAL', fontSize: 18, color: Colors.white),
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child: BoldText(
                      label: 'Bus Ticketing System',
                      fontSize: 14,
                      color: Colors.white),
                ),
                // Will show on bottom of SideMenu when displayMode was SideMenuDisplayMode.open

                // Notify when display mode changed
                onDisplayModeChanged: (mode) {
                  print(mode);
                },
                // List of SideMenuItem to show them on SideMenu
                items: [
                  SideMenuItem(
                    priority: 0,
                    title: 'Users',
                    onTap: (_, page1) {
                      page1.changePage(0);
                      page.jumpToPage(0);
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SideMenuItem(
                    priority: 1,
                    title: 'Ride History',
                    onTap: (_, page1) {
                      page1.changePage(1);
                      page.jumpToPage(1);
                    },
                    icon: const Icon(
                      Icons.history,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: page,
                  children: const [UsersTab(), RidesTab()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
