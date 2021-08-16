import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow[900], borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 17, color: Colors.black),
                  children: [
                    TextSpan(text: "Hellow "),
                    TextSpan(
                      text: "Sera Daniel !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Today You Have 4 new Application to deveolop.",
                style:
                    TextStyle(fontSize: 12, color: Colors.white, height: 1.6),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Read More",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
          if (MediaQuery.of(context).size.width >= 620) ...{
            Spacer(),
            Image.asset(
              "assets/lap.png",
              height: 160,
              // width: 50,
            )
          }
        ],
      ),
    );
  }
}
