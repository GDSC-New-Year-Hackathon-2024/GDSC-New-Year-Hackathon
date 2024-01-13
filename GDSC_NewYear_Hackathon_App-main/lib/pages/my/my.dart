import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'change.dart';
import 'couple_add.dart';

class My extends ConsumerWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.13,
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(
                CupertinoIcons.heart_circle_fill,
                color: Color(0xff7c74ee),
              ),
              Text(
                'LUSTLE',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7c74ee),
                ),
              ),
            ],
          ),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: MediaQuery.of(context).size * 0.1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/pet/player.png'),

              ),
              Icon(
                CupertinoIcons.heart_circle_fill,
                color: Color(0xff7c74ee),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/pet/enemy.png'),
              ),
            ],
          ),
          Text(
            '길동이',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Change()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.height * 0.25,
                      height: MediaQuery.of(context).size.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xff7c74ee),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '프로필 수정',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child:InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Add()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.25,
                    height: MediaQuery.of(context).size.height * 0.055,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff7c74ee),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '커플 초대',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
          SizedBox(height: 120),
          GestureDetector(
            onTap: () {},
            child: Text(
              '로그아웃',
              style: TextStyle(
                color: Color(0xff7c74ee),
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

Widget _buildProfileInfo(String label, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$label: ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
