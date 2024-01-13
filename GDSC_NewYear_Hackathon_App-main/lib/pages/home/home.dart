import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:gdsc_newyear_q/models/todo_DTO.dart';
import '/pages/home/todo_card_mate2.dart';

import 'pet_card.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {

  @override
  Widget build(BuildContext context) {
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff7c74ee),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('상점 기능은 준비중입니다.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('예'),
                                        ),
                                      ],
                                      backgroundColor: Colors.white,
                                    );
                                  });
                            },
                            child: Text(
                              '50러슬',
                              style: TextStyle(
                                color: Color(0xff7c74ee),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '150일',
                        style: TextStyle(
                          color: Color(0xffde89ff),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff7c74ee),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'LV 3 ',
                            style: TextStyle(
                              color: Color(0xff7c74ee),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: PetCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                thickness: 3.0,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      '완료된 연인\'S TO DO',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffb774ee),
                      ),
                    )
                  ]),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      TodoDTO todo = todoList[index];
                      return InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  TodoDTO todo = todoList[index];
                                  return Container(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xffb774ee),
                                              width: 2,
                                            ),
                                          ),
                                          child: ListTile(
                                            title: Text(
                                              todo.title,
                                              style: TextStyle(
                                                color: Color(0xffb774ee),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            trailing: Icon(
                                              CupertinoIcons.heart_fill,
                                              color: Color(0xffb774ee),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: MediaQuery.of(context).size.height * 0.2,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xffb774ee),
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                todo.description,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: Color(0xffb774ee),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text('승인'),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: Color(0xffb774ee),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text('거절'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ));
                                });
                          },
                          child: TodoCardMate2(todoDTO: todo,));
                    },
                  ),
                ]))
          ]),
        )));
  }
}

List<TodoDTO> todoList = [
  TodoDTO(
    title: '플러터',
    subtitle: 'Dart 문법 공부',
    description: '공부하기 너무 싫다~',
  ),
  TodoDTO(
    title: '스프링',
    subtitle: '스프링 부트',
    description: '재미있는 서버 공부',
  ),

];
