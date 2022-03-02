import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/colors.dart';
import 'package:toss_ui_clone/widgets/toss_get_point_card_widget.dart';

final List<TossGetPointCard> getPointCardList = [
  TossGetPointCard(assetUrl: 'assets/first_page_icon_1.png', title: '만보기', subtitle: '140원 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_2.png', title: '좋아하는 브랜드에서', subtitle: '브랜드 캐시백 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_3.png', title: '행운퀴즈 풀고', subtitle: '랜덤 금액 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_4.png', title: '이번 주 미션하면', subtitle: '얼마 받을지 보기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_5.png', title: '머니 알림 받고', subtitle: '20원 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_1.png', title: '카드 등록하고', subtitle: '500원 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_2.png', title: '토스프라임 가입하고', subtitle: '최대 1억 받기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_3.png', title: '버튼 누르고', subtitle: '10원 주기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_4.png', title: '택시 타고', subtitle: '집에 가기'),
  TossGetPointCard(assetUrl: 'assets/first_page_icon_5.png', title: '카드 쓰고', subtitle: '50000원 받기'),
];

class TossSecondPage extends StatelessWidget {
  const TossSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  Text(
                    "내 쿠폰",
                    style: TextStyle(color: TossColor.black),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Text(
                          "혜택",
                          style: TextStyle(
                            color: TossColor.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    ListTile(
                      leading: Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Image.asset('assets/third_page_icon_5.png'),
                      ),
                      title: Text(
                        "내 포인트",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                        ),
                      ),
                      subtitle: Text(
                        "0 원",
                        style: TextStyle(
                          color: TossColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: TossColor.grey1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/second_page_icon_1.png'),
                          Text(
                            "이번 주 브랜드 도착",
                            style: TextStyle(
                              color: TossColor.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "좋아하는 브랜드를 골라보세요",
                            style: TextStyle(
                              color: TossColor.bluegrey,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(TossColor.blue),
                            ),
                            child: Text(
                              "10개 브랜드 보기",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 48),
                    Text(
                      "포인트 모으기",
                      style: TextStyle(
                        color: TossColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    ...getPointCardList.map(
                      (TossGetPointCard tossGetPointCard) => TossGetPointCardWidget(
                        tossGetPointCard: tossGetPointCard,
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
