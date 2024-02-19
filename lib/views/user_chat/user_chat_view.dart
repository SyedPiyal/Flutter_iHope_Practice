import 'package:flutter/material.dart';

class UserChat extends StatefulWidget {
  final String userName;
  final String userImage;

  const UserChat({Key? key, required this.userName, required this.userImage})
      : super(key: key);

  @override
  _UserChatState createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        //----->
        //changing app back button color
        //----->
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),

        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(widget.userImage),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 5),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text(widget.userName, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,)),
                const Text(
                  "online",
                  style: TextStyle(fontSize: 14,color: Colors.white, ),
                ),
              ],),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],

        //----->
        //for changing app bar shape and color
        //----->
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff237B86),
                Color(0xff02485B),
              ],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFfef1ee),
      body: Column(
        children: [
          const Expanded(
            child: SizedBox(
              height: 600,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(color: Colors.white),
            child: const Row(
              children: [
                SizedBox(
                  width: 280,
                  child: TextField(
                    style:TextStyle(fontSize:15),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle:TextStyle(fontSize:15),
                      hintStyle: TextStyle(fontSize:15),
                      hintText: 'Type Here....',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.multiline,maxLines: null,
                  ),
                ),
                Icon(Icons.add),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.camera_alt),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
