import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/colors.dart';

class TossBankCard {
  String? assetUrl;
  String? title;
  TossBankCard({this.assetUrl, this.title});
}

class TossBankCardWidget extends StatelessWidget {
  const TossBankCardWidget({
    Key? key,
    required this.tossBankCard,
  }) : super(key: key);
  final TossBankCard tossBankCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: TossColor.white,
      ),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 4,
            child: Image.asset(
              '${tossBankCard.assetUrl}',
            ),
          ),
          Spacer(),
          Text(
            "${tossBankCard.title}",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
