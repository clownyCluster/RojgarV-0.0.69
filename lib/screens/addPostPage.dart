import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  static const String id = 'Add_Post';
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white,),
              onPressed: () => Navigator.pop(context), 
            ),
            title: Center(child: Text('Add Post')),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('Done', style: TextStyle(color: Colors.white),),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.redAccent[700]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/selena.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter job title',
                          labelText: 'Job title',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 212, 93, 93),
                                width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 119, 98, 33),
                                width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter the description of the job',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Enter about the job',
                    labelText: 'Description',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 119, 98, 33), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 212, 93, 93), width: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Select your location: ', style: TextStyle(fontWeight: FontWeight.w600),),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
