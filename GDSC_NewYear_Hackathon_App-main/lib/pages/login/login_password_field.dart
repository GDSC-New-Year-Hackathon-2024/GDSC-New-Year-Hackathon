import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final obscureTextProvider = StateProvider<bool>((ref) => true);

class PasswordField extends ConsumerStatefulWidget {
  final TextEditingController passwordController;
  const PasswordField(this.passwordController, {Key? key}) : super(key: key);
  
  @override
  ConsumerState<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends ConsumerState<PasswordField> {


  @override
  Widget build(BuildContext context) {
    final obscureText = ref.watch(obscureTextProvider);
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: '비밀번호',
          ),
          controller: widget.passwordController,
          obscureText: obscureText,
          keyboardType: TextInputType.text,
        ),
        IconButton(
          onPressed: () {
            ref.watch(obscureTextProvider.notifier).state = !obscureText;
          },
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ],
    );
  }
}

