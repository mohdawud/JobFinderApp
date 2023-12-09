import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/theme/colors.dart';

// ignore: must_be_immutable
class ItemProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  IconData iconData;

  ItemProfile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10)
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}
