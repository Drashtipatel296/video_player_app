import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_app/provider/share_provider.dart';

import '../../provider/like_provider.dart';

Padding infoContainer({
  required BuildContext context,
  required String username,
  required int com,
  required int likes,
  required String share,
  required String video,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 640,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/dp.jpeg'),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      username,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '#funnyspotlight #memesspotlight #viral\n #spotlight #sharelikecomment',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.multitrack_audio_sharp,
                        size: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '@drashtipatel29',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Sounds',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 500,
                ),
                Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                  size: 33,
                ),
                Text(
                  '$com',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Consumer<LikeProvider>(
                  builder: (context, likeProvider, child) {
                    return GestureDetector(
                      onTap: () {
                        likeProvider.toggleLike();
                      },
                      child: Icon(
                        likeProvider.isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 30,
                        color: likeProvider.isLiked ? Colors.red : null,
                      ),
                    );
                  },
                ),
                Text(
                  '$likes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 25,
                ),
                Transform(
                  transform: Matrix4.rotationZ(5.8),
                  child: InkWell(
                    onTap: () {
                      Provider.of<ShareProvider>(context, listen: false)
                              .shareReel(video);
                    },
                    child: Icon(Icons.send,size: 30,
                          color: Colors.white,),
                  ),
                ),
                Text(
                  '$share',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 33,
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
