import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tt_club_ratings/pages/landing/settings_tab.dart';
import 'package:tt_club_ratings/pages/landing/stats_tab.dart';
import 'package:tt_club_ratings/pages/landing/tournaments_tab.dart';
import 'package:tt_club_ratings/pages/landing/users_tab.dart';

import 'landing_controller.dart';

class LandingPage extends StatelessWidget {

  LandingPage({super.key});

  final TextStyle unselectedLabelStyle = TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w500, fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);
 
  final bgColor = const Color.fromRGBO(36, 54, 101, 1.0);

  Widget buildBottomNavigationMenu(BuildContext context, LandingController landingPageController) 
  {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 64,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.onTabSelected,
            currentIndex: landingPageController.selectedTabIndex.value,
            backgroundColor:bgColor,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Tournaments',
                backgroundColor: bgColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
                label: 'Users',
                backgroundColor: bgColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.query_stats,
                    size: 20.0,
                  ),
                ),
                label: 'Stats',
                backgroundColor: bgColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.settings,
                    size: 20.0,
                  ),
                ),
                label: 'Settings',
                backgroundColor: bgColor,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) 
  {

    final controller = Get.put(LandingController(), permanent: false);

    return SafeArea(child: 
                      Scaffold(
                        body:Obx(() => IndexedStack(
                                        index: controller.selectedTabIndex.value,
                                        children: const [
                                          TournametsView(),
                                          UsersView(),
                                          StatsView(),
                                          SettingsView(),
                                        ],
                                      )),
                        bottomNavigationBar: buildBottomNavigationMenu(context, controller),
    ));
  }
}