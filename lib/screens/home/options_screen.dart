import 'package:flutter/material.dart';

Padding infoContainer() {
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
                SizedBox(height: 630,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/dp.jpeg'),
                      radius: 20,
                    ),
                    SizedBox(width: 10,),
                    Text("@drashtipatel29",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
                SizedBox(height: 10,),
                Text('#funnyspotlight #memesspotlight #viral\n #spotlight #sharelikecomment',style: TextStyle(),),
                SizedBox(height: 12,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.multitrack_audio_sharp),
                      Padding(
                        padding: const EdgeInsets.only(top: 3,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('@drashtipatel29'),
                            Text('Sounds'),
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
                SizedBox(height: 500,),
                Icon(Icons.comment_outlined,color: Colors.white,size: 38,),
                Text('115',style: TextStyle(color: Colors.white),),
                SizedBox(
                  height: 25,
                ),
                Icon(Icons.favorite,color: Colors.white,size: 38,),
                Text('100',style: TextStyle(color: Colors.white),),
                SizedBox(
                  height: 25,
                ),
                Icon(Icons.send,color: Colors.white,size: 38,),
                Text('2.2k',style: TextStyle(color: Colors.white),),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.more_horiz,color: Colors.white,size: 38,),
              ],
            )
          ],
        ),
      ],
    ),
  );
}