import 'package:flutter/material.dart';
import '../Models/song_model.dart';

class Mini_Player extends StatelessWidget {
  final SongModel recdata;
  Mini_Player({required this.recdata});
  @override
  Widget build(BuildContext context) {
    return miniplayer();
  }

  Widget miniplayer() {
    return Container(
      height: 70,
      child: Card(
          margin: EdgeInsets.all(5),
          elevation: 10,
          color: Colors.black54,
          child: Row(
            children: [
              SizedBox(
                width: 66,
                height: 66,
                child: Image.network(recdata.image),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    recdata.name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    recdata.artist,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black54,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )),
    );
  }
}
