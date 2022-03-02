import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/colors.dart';
import 'package:toss_ui_clone/widgets/toss_bank_card_widget.dart';

final List<TossBankCard> tossBankCardList = [
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: 'NH농협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: 'KB국민'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '카카오뱅크'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '신한'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '우리'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: 'IBK기업'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: '하나'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '새마을'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '대구'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '부산'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: '우체국'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: '신협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '수협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '광주'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '전북'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: '중국공상'),
];

class TossThirdPage extends StatelessWidget {
  const TossThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                children: [
                  SizedBox(
                    height: 172,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: tossBankCardList.length * 2,
                    itemBuilder: (context, index) {
                      return TossBankCardWidget(
                        tossBankCard: tossBankCardList[index % tossBankCardList.length],
                      );
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "증권사 선택",
                      style: TextStyle(
                        color: TossColor.grey2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: tossBankCardList.length * 2,
                    itemBuilder: (context, index) {
                      return TossBankCardWidget(
                        tossBankCard: tossBankCardList[index % tossBankCardList.length],
                      );
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                height: 160,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Text(
                          "어디로 돈을 보낼까요?",
                          style: TextStyle(
                            color: TossColor.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: TossColor.grey1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 42,
                            alignment: Alignment.center,
                            child: Text(
                              "추천",
                              style: TextStyle(
                                color: TossColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 42,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: TossColor.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "계좌",
                              style: TextStyle(
                                color: TossColor.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 42,
                            alignment: Alignment.center,
                            child: Text(
                              "연락처",
                              style: TextStyle(
                                color: TossColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
