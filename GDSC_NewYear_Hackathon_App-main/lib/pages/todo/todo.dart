import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'todo_card.dart';
import 'todo_card_mate.dart';
import 'package:go_router/go_router.dart';
import '/models/todo_DTO.dart';

class Todo extends ConsumerStatefulWidget {
  const Todo({super.key});

  @override
  ConsumerState createState() => _TodoState();
}

class _TodoState extends ConsumerState<Todo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: MediaQuery.of(context).size * 0.05,
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: Color(0xff7c74ee),
                ),
                Text(
                  'TO DO',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7c74ee),
                  ),
                ),
              ],
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: Icon(
                  CupertinoIcons.plus_circle,
                  color: Color(0xff7c74ee),
                  size: 35 ,
                ),
                onPressed: () {
                  context.go('/todo/add');
                },
              ),],
          ),
        ),
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index){
                      TodoDTO todo1 = todoList1[index];
                      return TodoCard(todoDTO: todo1);
                    },
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Text(
                            '친구의 TO DO',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffb774ee),
                            ),
                          )
                        ]
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index){
                          TodoDTO todo2 = todoList2[index];
                          return TodoCardMate(todoDTO: todo2);
                        },
                      ),
                    ]
                  )
                )
              ],
            )
        )
    );
  }
}

List<TodoDTO> todoList1 = [
  TodoDTO(
    title: '운동하기',
    subtitle: '상체운동',
    description: '팔굽혀펴기 10회, 런지 10회',
  ),
  TodoDTO(
    title: '공부하기',
    subtitle: '수학',
    description: '수학 1장 풀기',
  ),
  TodoDTO(
    title: '책읽기',
    subtitle: '소설',
    description: '소설 1권 읽기',
  ),
  TodoDTO(
    title: '청소하기',
    subtitle: '방',
    description: '방 청소하기',
  ),

];

List<TodoDTO> todoList2 = [
  TodoDTO(
    title: '청소하기',
    subtitle: '방',
    description: '방 청소하기',
  ),
  TodoDTO(
    title: '공부하기',
    subtitle: '수학',
    description: '수학 1장 풀기',
  ),
  TodoDTO(
    title: '운동하기',
    subtitle: '상체운동',
    description: '팔굽혀펴기 10회, 런지 10회',
  ),
  TodoDTO(
    title: '책읽기',
    subtitle: '소설',
    description: '소설 1권 읽기',
  ),


];
