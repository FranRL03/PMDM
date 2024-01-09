import 'package:flutter/material.dart';

class MySession extends StatelessWidget {
  const MySession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ const Image(image: NetworkImage('https://lh3.googleusercontent.com/drive-storage/ANtge_EDM2CRDpvvdptWGHdxit2D-ZgLFKD2HxK3lC55ns3FqzPYRtt9De_d0G4aJzTXntwSCVwoekL7WedPn4_wHovqNhrnIbZ9-TFZnoRT2Q=w1898-h868')),
       const Text('Beautiful, Private Sharing', style: TextStyle(color: Colors.grey)),
       Padding(
        padding: const EdgeInsets.only(top: 50),
        child: FilledButton(onPressed: null,     style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            minimumSize: MaterialStateProperty.all<Size>(const Size(200, 60)), 
            textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20))
          ), 
        child: const Text('Sign Up'),)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
          children: [
            const Text('Already have a Path account?', style: TextStyle(color: Colors.grey)),
            OutlinedButton(onPressed: null, style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(200, 60)), 
              textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontSize: 20)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              side: MaterialStateProperty.all(const BorderSide(width: 2.0, color: Colors.grey))
            ),
              child: const Text('Log In')),
          ],
        ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text("By using Path, you agree to Path's", style: TextStyle(color: Colors.grey)),
          ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Terms of Use', style: TextStyle(
              color: Colors.white, 
              decoration: TextDecoration.underline, 
              decorationColor: Colors.white,
              decorationThickness: 2.0)),
            Text(' '),
            Text('and', style: TextStyle(color: Colors.grey)),
            Text(' '),
            Text('Privacy Policy', style: TextStyle(
              color: Colors.white, 
              decoration: TextDecoration.underline, 
              decorationColor: Colors.white,
              decorationThickness: 2.0))
          ],
          )
      ],
    );
  }
}
