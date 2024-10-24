import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: commonAppBar(
        context,
        PageType.contact,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 100),
        children: [
          // 1. Hero 뷰
          _buildHero(context),
          // 2. 연락처
        ],
      ),
    );
  }

  Row _buildHero(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 2. 텍스트 뭉치 (예: 이름, 자기소개 등 추가 가능)
        _buildHeroTexts(context),

        Container(
          width: 110,
        ),

        // 1. 프로필 사진
        _buildProfileImage(),
      ],
    );
  }

  Container _buildProfileImage() {
    return Container(
      width: 286,
      height: 286,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF6327E9), width: 1),
        borderRadius: BorderRadius.circular(1000),
      ),
      padding: EdgeInsets.all(30),
      child: Container(
        width: 286, // 안쪽 원 크기
        height: 286,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF6327E9), width: 1),
          borderRadius: BorderRadius.circular(143), // 286 / 2 = 143
        ),
        child: Container(
          width: 230,
          height: 230,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.asset(
              "assets/profile.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Container _buildHeroTexts(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, I’m Dajin 👋",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF38393B),
            ),
          ),
          Container(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Get In",
                style: TextStyle(
                  height: 0.7,
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF38393B),
                ),
              ),
              Container(width: 15,),
              Text(
                "Touch",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF6327E9),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Text(
            "Looking to partner or work together?",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
              color: Color(0xFF38393B),
            ),
          ),
          Container(
            height: 44,
          ),
        ],
      ),
    );
  }
}
