import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String englishName;
  final String japaneseName;
  final Color color;
  final String music;
  CustomContainer(
      {@required this.image,
      @required this.englishName,
      @required this.japaneseName,
      this.color,
      this.music});
  @override
  Widget build(BuildContext context) {
    print('music =$music');
    return (image == null)
        ? Container()
        : Container(
            color: color,
            height: 88,
            child: Row(
              children: [
                Container(
                  color: Color(0xFFFFF6DC),
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        japaneseName,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        englishName,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            AudioCache player = AudioCache();
                            player.play(music);
                          },
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
