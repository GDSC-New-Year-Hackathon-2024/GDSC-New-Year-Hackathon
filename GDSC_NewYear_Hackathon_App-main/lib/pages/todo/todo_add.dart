import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoAdd extends ConsumerWidget {
  const TodoAdd({super.key});

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
                  'ADD',
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

              ],
            )
        )
    );
  }
}


