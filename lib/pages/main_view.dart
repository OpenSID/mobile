import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_talok/core.dart';
import 'home/home_view.dart';
import 'main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: controller.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            BeritaView(),
            LoginView(),
            MandiriView(),
          ],
        ),
        bottomNavigationBar: ValueBuilder<int>(
          initialValue: 0,
          builder: (value, updateFn) => Container(
            color: Colors.grey[200],
            child: BubbleBottomBar(
              opacity: .2,
              currentIndex: value,
              onTap: (tab) {
                controller.pageController.animateToPage(
                  tab,
                  duration: controller.animationDuration,
                  curve: Curves.ease,
                );
                updateFn(tab);
              },
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              elevation: 8,
              hasInk: true, //new, gives a cute ink effect
              items: <BubbleBottomBarItem>[
                BubbleBottomBarItem(
                  backgroundColor: kPrimaryColor,
                  icon: Icon(
                    LineIcons.home,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(LineIcons.home),
                  title: Text('Home'),
                ),
                BubbleBottomBarItem(
                  backgroundColor: kPrimaryColor,
                  icon: Icon(
                    LineIcons.newspaper,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(LineIcons.newspaper),
                  title: Text('Berita'),
                ),
                BubbleBottomBarItem(
                  backgroundColor: kPrimaryColor,
                  icon: Icon(
                    LineIcons.bullhorn,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(LineIcons.bullhorn),
                  title: Text('e-Lapor'),
                ),
                BubbleBottomBarItem(
                  backgroundColor: kPrimaryColor,
                  icon: Icon(
                    LineIcons.user,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(LineIcons.user),
                  title: Text('Akun'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
