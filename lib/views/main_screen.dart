import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:driver_app/utils/theme_colors.dart';
import 'package:driver_app/views/profile/profile_screen.dart';
import 'package:get/get.dart';
import 'package:pandabar/pandabar.dart';
import 'home_page.dart';
import 'map/map.dart';
import 'order/order_history.dart';

/// This is the main application widget.
class MainScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainScreen> {
  String page = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.white,
        buttonColor: Colors.blueGrey,
        buttonSelectedColor: ThemeColors.baseThemeColor,
        fabIcon: InkWell(
          onTap: () {
            Get.to(MainScreen());
          },
          child: Icon(
            FontAwesomeIcons.hamburger,
            color: Colors.white,
          ),
        ),
        fabColors: [ThemeColors.baseThemeColor, ThemeColors.baseThemeColor],
        buttonData: [
          PandaBarButtonData(
            id: 'Home',
            icon: Icons.dashboard_outlined,
            title: 'Dashboard',
          ),
          PandaBarButtonData(
            id: 'Orders_History',
            icon: Icons.history,
            title: 'Orders history',
          ),
          PandaBarButtonData(
            id: 'Map',
            icon: Icons.location_on_outlined,
            title: 'Map',
          ),
          PandaBarButtonData(
            id: 'Profile',
            icon: Icons.person,
            title: 'Profile',
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {},
      ),
      body: Builder(
        builder: (context) {
          print(page);
          switch (page) {
            case 'Home':
              return HomePage();
            case 'Map':
              return Map();
            case 'Orders_History':
              return OrderHistory();
            case 'Profile':
              return ProfilePage();
            default:
              return HomePage();
          }
        },
      ),
    );
  }
}
