import 'package:admin_panal_sample/setting/responsice.dart';
import 'package:admin_panal_sample/widget/calender.dart';
import 'package:admin_panal_sample/widget/data.dart';
import 'package:admin_panal_sample/widget/header.dart';
import 'package:admin_panal_sample/widget/notification.dart';
import 'package:admin_panal_sample/widget/profile.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Header(),
          Expanded(
              child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        NotificationWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        if (Responsive.isMobile(context)) ...{
                          CalenderWidget(),
                          SizedBox(
                            height: 20,
                          ),
                        },
                        DataWidget(),
                      ],
                    ),
                  ),
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          CalenderWidget(),
                          SizedBox(
                            height: 22,
                          ),
                          Profile(),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
