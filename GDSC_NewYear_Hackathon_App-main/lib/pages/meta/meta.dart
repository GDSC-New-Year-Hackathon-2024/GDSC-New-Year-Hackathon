import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdsc_newyear_q/pages/meta/game.dart';

class Meta extends ConsumerStatefulWidget {
  const Meta({super.key});

  @override
  ConsumerState createState() => _MetaState();
}

class _MetaState extends ConsumerState<Meta> {

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.gamepad,
              color: Color(0xff7c74ee)
            ),
            Text(
              'GAME',
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
      body: GestureDetector(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color(0xff6259e8)],
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: MultiScenario(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff6259e8), Colors.white],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Stack(
                        children: [
                          TextField(
                            onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                            controller: textController,
                            decoration: InputDecoration(
                              hintText: '채팅을 보내세요',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
        
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
        
            ]
          )
        ),
      )

    );
  }
}