import 'package:flutter/material.dart';

class MySession extends StatelessWidget {
  const MySession({super.key});

  static const styleWitheBold = TextStyle(
      color: Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
      decorationThickness: 2.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('asset/path_logo.png'),
        const Text('Beautiful, Private Sharing',
            style: TextStyle(color: Colors.grey)),
        Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    fixedSize: const Size(270, 65),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color.fromARGB(255, 228, 149, 149)))),
                child: const Text('Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)))),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const Text('Already have a Path account?',
                  style: TextStyle(color: Colors.grey)),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE62F16),
                      fixedSize: const Size(270, 65),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 228, 149, 149)))),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Color.fromARGB(255, 228, 149, 149),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text("By using Path, you agree to Path's",
              style: TextStyle(color: Colors.grey)),
        ),
        RichText(
          text: const TextSpan(
            text: 'Terms of Use',
            style: styleWitheBold,
            children: <TextSpan>[
              TextSpan(
                  text: ' and ',
                  style: TextStyle(
                      color: Colors.grey, decoration: TextDecoration.none)),
              TextSpan(text: 'Privacy Policy', style: styleWitheBold)
            ],
          ),
        )
      ],
    );
  }
}
