import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TodoSummit extends ConsumerWidget {
  const TodoSummit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: MediaQuery.of(context).size * 0.05,
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Text(
                  'SUMMIT',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7c74ee),
                  ),
                ),
              ],
            ),
            centerTitle: false,
          ),
        ),
        body: SafeArea(
            child: Column(
              children: [
                //간단하게 제출하시겠습니까? 질문과 함께 제출하기 버튼
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Icon(
                  Icons.people,
                  size: 100,
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '제출하시겠습니까?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.pop();
                        //제출하기 버튼
                      },
                      child: Text('제출하기'),
                    ),
                  ],
                ),

              ],
            )
        )
    );
  }
}


