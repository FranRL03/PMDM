import 'package:flutter/material.dart';
import 'package:flutter_list_horizontal/widget/ActorsList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
      padding: const EdgeInsets.only(left: 40, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text('Best actors',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        const Text('and actresses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        const Text('March 2024', style: TextStyle(color: Colors.blueGrey)),

         Expanded(
           child: ListView(
             scrollDirection: Axis.horizontal,
            children: const [
              ActorsList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
              ActorsList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
              ActorsList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
              ActorsList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
            ]),
         ),
         const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home),
                        Text('Home')
                      ],
                    ),
                  ),
                     Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.camera_roll_outlined, color: Colors.grey),
                          Text('Booking', style: TextStyle(color: Colors.grey),)
                        ],
                        ),
                     ),
                   Padding(
                     padding: EdgeInsets.only(left: 10, right: 10),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark_remove_outlined, color: Colors.grey),
                        Text('List', style: TextStyle(color: Colors.grey))
                      ],
                                       ),
                   ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, color: Colors.grey),
                      Text('Profile', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ],
              )
            ],
          ),
      ]),   
      ),
     

      //  ListView(
      //     children: const [
      //       ActorList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
      //       ActorList(name: 'Morgan', apellido: 'Freeman', url: 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg')
      //     ]),
      );
  }
}
