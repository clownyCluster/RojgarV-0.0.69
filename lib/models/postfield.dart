import 'package:flutter/material.dart';

class PostField extends StatefulWidget {
  final String imagePath;
  final String name;
  final String description;

  PostField({this.imagePath, this.name, this.description});

  @override
  _PostFieldState createState() => _PostFieldState();
}

class _PostFieldState extends State<PostField> {
  bool isLiked = false;
  int _counter = 0;
  incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.imagePath),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          widget.description,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imagePath),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  // child: Image.asset(
                  //   imagePath,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_upward,
                        color: Colors.grey,
                      ),
                      onPressed: (){},
                    ),
                    Text('$_counter'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.mode_comment_rounded,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    Text('23'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    Text('2'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
