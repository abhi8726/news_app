import 'package:flutter/material.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/views/articles.dart';

class Category extends StatefulWidget {
  @override
  final String category;
  Category({this.category});
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // ignore: deprecated_member_use
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getCategory();
  }

  getCategory() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Daily'),
            Text(
              'News',
              style: TextStyle(color: Colors.red[400]),
            )
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save)),
          )
        ],
        elevation: 0,
      ),
      body:_loading
          ? Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CircularProgressIndicator(),
              ),
            ):
      SingleChildScrollView(
              child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BlogTile(
                        imageUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].desc,
                        url: articles[index].url,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile({this.imageUrl, this.title, this.desc, this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Articles(
              blogUrl:url
            )));
      },
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Image.network(imageUrl),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
