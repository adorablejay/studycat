import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studycat/screens/profile_setting.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).focusColor,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              width * 0.1,
              height * 0.05,
              width * 0.1,
              height * 0.1,
            ),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage:
                        AssetImage('assets/profile.png'), // 프로필 이미지 설정
                  ),
                  const Text(
                    '한승재',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Gimbuk00@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profileset(),
                        ),
                      );
                      // 프로필 수정
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Theme.of(context).focusColor,
                        fixedSize: Size(width * 0.32, height * 0.01),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: const Text('프로필 수정'),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
