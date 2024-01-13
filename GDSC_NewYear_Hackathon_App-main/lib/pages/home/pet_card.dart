import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif/gif.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class PetCard extends ConsumerStatefulWidget {
  const PetCard({super.key});

  @override
  ConsumerState createState() => _PetCardState();
}

class _PetCardState extends ConsumerState<PetCard>
    with SingleTickerProviderStateMixin {
  late final GifController controller;

  @override
  void initState() {
    controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Pets(),
        ),
        Expanded(
          child: Pets2(),
        ),
      ],
    );
  }
}

class Pets extends ConsumerStatefulWidget {
  const Pets({super.key});

  @override
  ConsumerState createState() => _PetsState();
}

class _PetsState extends ConsumerState<Pets>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 18, 18, 0),
        child: FractionallySizedBox(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/pet/player.png'),
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ChatBubble(
                    clipper:
                        ChatBubbleClipper3(type: BubbleType.receiverBubble),
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 20),
                    backGroundColor: Colors.grey[100],
                    child: const Text(
                      '공부 하기 싫다',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Pets2 extends ConsumerStatefulWidget {
  const Pets2({super.key});

  @override
  ConsumerState createState() => _Pets2State();
}

class _Pets2State extends ConsumerState<Pets2>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(18, 18, 18, 0),
        child: FractionallySizedBox(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/pet/enemy.png'),
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ChatBubble(
                    clipper:
                        ChatBubbleClipper3(type: BubbleType.receiverBubble),
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 20),
                    backGroundColor: Colors.grey[100],
                    child: const Text(
                      '놀구 싶어요',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
