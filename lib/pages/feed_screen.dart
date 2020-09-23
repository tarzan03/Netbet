import 'package:flutter/material.dart';
import 'package:myappbeta/models/post_model.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
      child: Container(
        height: 660.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(
                leading: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 5.0),
                  ]),
                  child: CircleAvatar(
                      child: ClipOval(
                    child: Image(
                      height: 50.0,
                      width: 50.0,
                      image: AssetImage(posts[index].authorImageUrl),
                      fit: BoxFit.cover,
                    ),
                  )),
                ),
                title: Text(
                  posts[index].authorName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 2.0),
                ),
                subtitle: Text(posts[index].timeAgo),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('more options');
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 5),
                          blurRadius: 0.0)
                    ],
                    image: DecorationImage(
                      image: AssetImage(posts[index].imageUrl),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.favorite_border, size: 40.0),
                      onPressed: () {
                        print('Like post');
                      }),
                  IconButton(
                      icon: Icon(Icons.add_comment, size: 40.0),
                      onPressed: () {
                        print('comments');
                      }),
                  SizedBox(width: 90.0),
                  IconButton(
                      icon: Icon(Icons.add_circle, size: 40.0),
                      onPressed: () {
                        print('Request bet on this post');
                      }),
                  SizedBox(width: 90.0),
                  IconButton(
                      icon: Icon(Icons.star_border, size: 40.0),
                      onPressed: () {
                        print(
                            'give starz'); //Rating the user using the five stars is not mandatory in this page it maybe removed in future.
                      }),
                  IconButton(
                      icon: Icon(Icons.file_download, size: 40.0),
                      onPressed: () {
                        print('download');
                      })
                ],
              ),
              Text('General Comments')
            ],
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('netbet',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 32.0,
                              fontFamily: 'Specialelite')),
                      Row(children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.view_stream,
                              color: Colors.deepOrange,
                            ),
                            iconSize: 30.0,
                            onPressed: () {
                              print('Stream games');
                            }),
                        SizedBox(width: 12.0),
                        IconButton(
                            icon: Icon(
                              Icons.attach_money,
                              color: Colors.deepOrange,
                            ),
                            iconSize: 30.0,
                            onPressed: () {
                              print('see your money');
                            })
                      ])
                    ]),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(width: 10.0);
                    }
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      width: 80.0,
                      height: 80.0,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 10.0,
                        )
                      ]),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                              height: 80.0,
                              width: 80.0,
                              image: AssetImage(bets[index - 1]),
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: bets.length + 1,
                ),
              ),
              _buildPost(0),
              _buildPost(1),
            ]),
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      // title: Text('HomePage')
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      // title: Text('Using the search symbol but it is realy for ongoing bets')
                      title: Text('')),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.deepOrange,
                        onPressed: () => print('Upload photo'),
                        child: Icon(
                          Icons.add,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(''),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      // title: Text('your likes and comments and subscribers')
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      // title: Text('profile')
                      title: Text('')),
                ])));
  }
}
