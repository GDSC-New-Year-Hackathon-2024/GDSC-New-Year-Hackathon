import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '/models/todo_DTO.dart';

class TodoCardMate extends ConsumerStatefulWidget {
  final TodoDTO todoDTO;
  const TodoCardMate({required this.todoDTO, super.key});
  @override
  ConsumerState createState() => _TodoCardMateState();
}

class _TodoCardMateState extends ConsumerState<TodoCardMate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xffb774ee),
            width: 2,
          ),
        ),
        child: InkWell(
          onTap:(){
          },
          child: ListTile(
            leading: Icon(
              CupertinoIcons.checkmark_alt_circle,
              color: Color(0xffb774ee),
            ),
            title: Text(
              '${widget.todoDTO.title} | ${widget.todoDTO.subtitle}',
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
    );
  }
}
