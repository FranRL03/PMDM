import 'package:flutter/material.dart';

class MySession extends StatelessWidget {
  const MySession({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image(image: NetworkImage('https://lh3.googleusercontent.com/drive-storage/ANtge_GQB4c5UcrykYxQeF6KPoUppZszApyLsy6Gt7TAhJnSHws9GoW91Ir2eWQd3MpwxHU8gCY2SAWVLzG340upkHuBoBQjG6DiOBADofyBhw=w1903-h919')),
       Text('Beautiful, Private Sharing', style: TextStyle(color: Colors.white)),
       Padding(
        padding: EdgeInsets.only(top: 50),
        child: FilledButton(onPressed: null, child: Text('Sign Up'))
        ),
      ],
    );
  }
}
