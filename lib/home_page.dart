import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // 9단계의 폰트 굵기
  // w100: Thin
  // w200: Extra Light
  // w300: Light
  // w400: Regular (Normal)
  // w500: Medium
  // w600: Semi Bold
  // w700: Bold
  // w800: Extra Bold
  // w900: Black
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        context,
        PageType.home,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 100),
        children: [
          Container(
            height: 60,
          ),

          // Hero Section
          _buildHero(context),

          // Skills Section
          _buildSkills(),

          // Projects Section
          Column(
            children: [
              // 1. 제목 (Projects.)
              _buildTitle("Projects"),

              // 2. 본문
              Row(
                children: [
                  // 1. 프로젝트 1
                  Column(
                    children: [],
                  ),

                  // 2. 프로젝트 2

                  // 3. 프로젝트 3
                ],
              )
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFFF2F2F2),
    );
  }

  Widget _buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 135,
        ),

        // 1. 타이틀 (Skills)
        _buildTitle("Skills"),

        // 2. 본문 내용
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. FrontEnd
            _buildSkillsContents(
                "FrontEnd", ["JavaScript", "CSS", "React", "NextJS"]),
            Container(
              width: 100,
            ),

            // 2. BackEnd
            _buildSkillsContents(
                "BackEnd", ["Python", "Fast API", "Java", "Spring"]),
            Container(
              width: 100,
            ),

            // 3. DataBase
            _buildSkillsContents("DataBase", ["Dynamo DB", "Mongo DB"]),
            Container(
              width: 100,
            ),

            // 4. App
            _buildSkillsContents("App", ["Flutter", "Kotlin"]),
            Container(
              width: 100,
            ),

            // 5. Cloud
            _buildSkillsContents("Cloud", ["AWS", "Docker"]),
            Container(
              width: 100,
            ),

            // 6. Soft Skills
            _buildSkillsContents("Soft Skills",
                ["Communication", "Problem Solving", "Teamwork"]),
          ],
        )
      ],
    );
  }

  RichText _buildTitle(String title) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Color(0xFF6327E9),
              )),
          TextSpan(
              text: ".",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Color(0xFF38393B),
              )),
        ],
      ),
    );
  }

  Column _buildSkillsContents(String title, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFF38393B),
          ),
        ),
        Container(
          height: 20,
        ),
        for (var skill in skills)
          Text(
            skill,
            style: TextStyle(
              color: Color(0xFF6A6C70),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
      ],
    );
  }

  Row _buildHero(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildProfileImage(),

        Container(
          width: 110,
        ),

        // 2. 텍스트 뭉치 (예: 이름, 자기소개 등 추가 가능)
        _buildHeroTexts(context),
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
          Text(
            "Backend",
            style: TextStyle(
              height: 0.7,
              fontSize: 70,
              fontWeight: FontWeight.w900,
              color: Color(0xFF6327E9),
            ),
          ),
          Text(
            "Developer",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.w900,
              color: Color(0xFF38393B),
            ),
          ),
          Container(
            height: 20,
          ),
          Text(
            "I'm a backend developer based in South Korea.",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
              color: Color(0xFF38393B),
            ),
          ),
          Container(
            height: 44,
          ),

          // 버튼들
          Row(
            children: [
              // Get In Touch
              _buildGetInTouchButton(context),
              Container(
                width: 20,
              ),

              // Browse Projects
              _buildBrowseProjectsButton(context),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector _buildBrowseProjectsButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/projects");
      },
      child: Container(
        width: 153,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF38393B),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Browse Projects",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF38393B),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buildGetInTouchButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/contact");
      },
      child: Container(
        width: 153,
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFF6327E9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Get In Touch",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
