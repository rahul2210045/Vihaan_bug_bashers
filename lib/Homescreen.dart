
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:vihaan_hack/Community.dart';
import 'package:vihaan_hack/article.dart';
import 'package:vihaan_hack/profile.dart';

import 'mainPage.dart';


class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [Homescreen1(),comm(),Articles(),Profile()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
         PersistentBottomNavBarItem(
        icon: Icon(Icons.video_call),
        title: ("Video Call"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat_bubble),
        title: ("Chat"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  // void getcredentials() async {
  //   DocumentSnapshot doc = await FirebaseFirestore.instance
  //       .collection('Users')
  //       .doc('${patientInfo.email}')
  //       .get();
  //   setState(() {
  //     patientInfo.name = doc['name'];
  //     patientInfo.friendName = doc['friend'];
  //     patientInfo.friendContact = doc['friendContact'];
  //     patientInfo.phoneNo = doc['friendPhone'];
  //     patientInfo.specialistName = doc['specialist'];
  //     patientInfo.specialistContact = doc['specialistContact'];
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    // getcredentials();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
