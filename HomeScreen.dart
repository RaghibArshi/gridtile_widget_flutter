import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  IconData likeIcon = Icons.thumb_up_off_alt;
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Grid Tile Bar', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 400.0,
          width: 300.0,
          child: GridTile(
            header: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.3),
              title: Text('Sophia Kine'),
              subtitle: Text('Photographer Blogger'),
              leading: Icon(Icons.perm_contact_calendar_rounded),
              trailing: Icon(Icons.menu_rounded),
            ),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2018/01/01/14/21/one-3054263_960_720.jpg',
              fit: BoxFit.fill,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black.withOpacity(0.3),
              // title: Text('Sophia Kine'),
              subtitle: Text('Comments'),
              leading: Icon(Icons.comment),
              trailing: GestureDetector(
                onTap: (){
                  if(like){
                    like = false;
                    likeIcon = Icons.thumb_up_off_alt;
                  } else {
                    like = true;
                    likeIcon = Icons.thumb_up;
                  }
                  setState(() {});
                },
                  child: Icon(likeIcon)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
