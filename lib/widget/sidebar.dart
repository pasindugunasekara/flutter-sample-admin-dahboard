import 'package:flutter/material.dart';

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: Colors.blueGrey[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
              child: Stack(
                children: <Widget>[
                  Text(
                    'Company Name',
                    style: TextStyle(
                      fontSize: 26,
                      backgroundColor: Colors.blueGrey[800],
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Company Name',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[900],
                    ),
                  ),
                ],
              ),
            ),
            DrawerList(
              title: "DashBoard",
              icon: "assets/home.png",
              press: () {},
            ),
            DrawerList(
              title: "Recruitment ",
              icon: "assets/company-enterprise.png",
              press: () {},
            ),
            DrawerList(
              title: "OnBoarding",
              icon: "assets/onboarding.png",
              press: () {},
            ),
            DrawerList(
              title: "Report",
              icon: "assets/rules.png",
              press: () {},
            ),
            DrawerList(
              title: "Calender",
              icon: "assets/calender.png",
              press: () {},
            ),
            DrawerList(
              title: "Setting",
              icon: "assets/setting.png",
              press: () {},
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/sidebarpic.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;
  const DrawerList({Key key, this.title, this.icon, this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Image.asset(
        icon,
        width: 20,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
