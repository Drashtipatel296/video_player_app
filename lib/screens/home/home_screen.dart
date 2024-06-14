import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../utils/video_list.dart';
import 'content_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ContentScreen(
                  videoAssetPath: videoAssetPath[index],
                );
              },
              itemCount: videoAssetPath.length,
              scrollDirection: Axis.vertical,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/img/avatar.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text(
                          'Spotlight',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.add_box_outlined,
                        size: 25,
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.location_on_outlined,color: Colors.white,size: 28,),
          Icon(Icons.chat_bubble_outline,color: Colors.white,size: 28,),
          Icon(Icons.camera_alt_outlined,color: Colors.white,size: 28,),
          Icon(Icons.people_outline,color: Colors.white,size: 28,),
          Icon(Icons.play_arrow,color: Colors.white,size: 28,),
        ],
      ),
    );
  }
}
