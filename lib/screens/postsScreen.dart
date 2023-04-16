import 'package:flutter/material.dart';

import '../models/posts.dart';
import '../services/post_service.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  PostService postsService = PostService();
  List<Posts> postsdata = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              Posts dataPost = postsdata[index];
              return Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        "${dataPost.id}",
                        // textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        // color: Colors.redAccent,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TITLE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              dataPost.title,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "BODY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              dataPost.body,
                              // textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: postsdata.length,
          ),
        ),
      ]),
    );
  }

  void getData() async {
    postsdata = await postsService.getPosts();
    setState(() {});
  }
}
