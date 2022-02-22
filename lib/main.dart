import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/colors.dart';
import 'package:toss_ui_clone/pages/toss_second_page.dart';
import 'package:toss_ui_clone/pages/toss_third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          TossFirstPage(),
          TossSecondPage(),
          TossThirdPage(),
          Text("4"),
          Text("5"),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 1),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          iconSize: 24,
          unselectedItemColor: TossColor.grey2,
          selectedItemColor: TossColor.bluegrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.add_photo_alternate), label: "혜택"),
            BottomNavigationBarItem(icon: Icon(Icons.local_shipping_rounded), label: "송금"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "주식"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "전체"),
          ],
        ),
      ),
    );
  }
}

class TossFirstPage extends StatelessWidget {
  const TossFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: TossColor.grey1,
        elevation: 0,
        title: Container(
          height: 48,
          child: Image.asset(
            'assets/toss_logo.png',
          ),
        ),
        actions: [
          Image.asset(
            'assets/toss_appbar_icon_1.png',
            height: 48,
            width: 48,
          ),
          SizedBox(width: 16),
          Image.asset(
            'assets/toss_appbar_icon_2.png',
            height: 36,
            width: 36,
          ),
          SizedBox(width: 16),
          Image.asset(
            'assets/toss_appbar_icon_3.png',
            height: 30,
            width: 30,
          ),
          SizedBox(width: 16)
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        color: TossColor.grey1,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: Image.asset('assets/image 45.png'),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "계좌, 카드 연결이 끊어졌어요",
                    style: TextStyle(
                      color: TossColor.bluegrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                subtitle: Text(
                  "잔액 다시 표시하기",
                  style: TextStyle(
                    color: TossColor.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          "토스뱅크",
                          style: TextStyle(
                            color: TossColor.bluegrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 46.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "토스뱅크 카드 쓰면",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "매달 최대 40,300원 캐시백",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          "자산",
                          style: TextStyle(
                            color: TossColor.bluegrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 47.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "부산은행 계좌",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "? 원",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    trailing: SizedBox(
                      child: ElevatedButton(
                        child: Text("송금"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          onPrimary: TossColor.bluegrey,
                          primary: TossColor.grey2,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 48.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "카카오뱅크 계좌",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "? 원",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    trailing: SizedBox(
                      child: ElevatedButton(
                        child: Text("송금"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          onPrimary: TossColor.bluegrey,
                          primary: TossColor.grey2,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 49.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "대출, 41개 금융사 대기중",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "내 최대 대출 한도 보기",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          "소비",
                          style: TextStyle(
                            color: TossColor.bluegrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 51.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "이번 달 쓴 금액",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "사용 금액 보기",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    trailing: SizedBox(
                      child: ElevatedButton(
                        child: Text("내역"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          onPrimary: TossColor.bluegrey,
                          primary: TossColor.grey2,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Image.asset('assets/image 50.png'),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        "카드 결제 예정 금액",
                        style: TextStyle(
                          color: TossColor.bluegrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "금액 보기",
                      style: TextStyle(
                        color: TossColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 130,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: TossColor.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "1분 만에",
                              style: TextStyle(
                                color: TossColor.bluegrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "내 보험\n전부 조회",
                              style: TextStyle(
                                color: TossColor.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Spacer(),
                                Image.asset('assets/image 51.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: TossColor.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "혜택 주는",
                              style: TextStyle(
                                color: TossColor.bluegrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "차 보험료\n조회",
                              style: TextStyle(
                                color: TossColor.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Spacer(),
                                Image.asset('assets/image 52.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: TossColor.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "최근",
                              style: TextStyle(
                                color: TossColor.bluegrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "캐시백\n받기",
                              style: TextStyle(
                                color: TossColor.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Spacer(),
                                Image.asset('assets/image 49.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.symmetric(horizontal: 12), child: Text('금액 숨기기')),
                  Container(
                    color: TossColor.bluegrey,
                    width: 1,
                    height: 12,
                  ),
                  Container(margin: EdgeInsets.symmetric(horizontal: 12), child: Text('자산 추가')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
