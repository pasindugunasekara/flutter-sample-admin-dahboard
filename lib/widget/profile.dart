import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/pe1.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Sera Daniel",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Full Stack Developer",
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
          ),
          Profiledetail("Joined Date", "27-Feb-2021"),
          Profiledetail("Projects", "46 Active"),
          Profiledetail("Accomplishment", "200"),
        ],
      ),
    );
  }

  Widget Profiledetail(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}
