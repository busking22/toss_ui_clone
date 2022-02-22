import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/colors.dart';

class TossGetPointCard {
  String? assetUrl;
  String? title;
  String? subtitle;
  TossGetPointCard({this.assetUrl, this.title, this.subtitle});
}

class TossGetPointCardWidget extends StatelessWidget {
  const TossGetPointCardWidget({
    Key? key,
    required this.tossGetPointCard,
  }) : super(key: key);

  final TossGetPointCard tossGetPointCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Container(
          width: 64,
          alignment: Alignment.center,
          child: Image.asset(
            "${tossGetPointCard.assetUrl}",
          ),
        ),
        horizontalTitleGap: 8,
        title: Text(
          "${tossGetPointCard.title}",
          style: TextStyle(
            color: TossColor.bluegrey,
            fontSize: 12,
          ),
        ),
        subtitle: Text(
          "${tossGetPointCard.subtitle}",
          style: TextStyle(
            color: TossColor.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    );
  }
}
