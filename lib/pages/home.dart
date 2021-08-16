import 'package:admin_panal_sample/controller/menucontroller.dart';
import 'package:admin_panal_sample/pages/dashboard.dart';
import 'package:admin_panal_sample/setting/responsice.dart';
import 'package:admin_panal_sample/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarPage(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor: Colors.blueGrey[800],
      body: Row(
        children: [
          //desktop mode for responsive
          if (Responsive.isDesktop(context))
            Expanded(
              child: SidebarPage(),
            ),
          Expanded(flex: 4, child: DashboardPage()),
        ],
      ),
    );
  }
}
