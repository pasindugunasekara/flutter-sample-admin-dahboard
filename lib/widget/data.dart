import 'package:admin_panal_sample/setting/responsice.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatefulWidget {
  @override
  _DataWidgetState createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: <Widget>[
                  Text(
                    'Recruitment Progress',
                    style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.white,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Recruitment Progress',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  tableHeader("Full Name"),
                  if (!Responsive.isMobile(context)) tableHeader("Designation"),
                  tableHeader("status"),
                  if (!Responsive.isMobile(context)) tableHeader(""),
                ],
              ),
              tableRow(
                context,
                name: "Jerom mendis",
                image: "pe2.jpg",
                color: Colors.red,
                designation: "Project Manager",
                status: "Processing",
              ),
              tableRow(
                context,
                name: "Sera Daniel",
                image: "pe1.jpg",
                color: Colors.red,
                designation: "Full Stack Developer",
                status: "Processing",
              ),
              tableRow(
                context,
                name: "Jehan Smith",
                image: "pe3.jpg",
                color: Colors.blue,
                designation: "UI/UX Designer",
                status: "Finished",
              ),
              tableRow(
                context,
                name: "Kevin Perera",
                image: "pe4.jpg",
                color: Colors.blue,
                designation: "BA",
                status: "Finished",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 4 out of 4 Results"),
                Text(
                  "view all",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(context, {name, image, designation, status, color}) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  image,
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(name)
            ],
          ),
        ),
        if (!Responsive.isMobile(context)) Text(designation),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(status),
          ],
        ),
        // Image.asset(
        //   "---",
        //   color: Colors.grey,
        //   height: 30,
        // )
        if (!Responsive.isMobile(context)) Text("- - - - - - - -")
      ],
    );
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
