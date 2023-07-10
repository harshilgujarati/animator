import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_app/providers/controllers/news_place_providers.dart';
import 'package:provider/provider.dart';
import '../../models/news_model.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  void initState() {
    super.initState();
    Provider.of<News_Place_Provider>(context, listen: false)
        .getcountryName("us");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Today's News",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sunny,
              size: 30,
            ),
          )
        ],
      ),
      body: FutureBuilder(
          future: Provider.of<News_Place_Provider>(context).getNews,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Container(
                  child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text("BCCI Planting Trees!!!"),
                      leading: Icon(Icons.newspaper),
                      subtitle: Text("bcci announces"),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("news_details_page");
                        },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                    ListTile(
                      title: Text("Opposition Should Congratulate, Not Boycott..."),
                      leading: Icon(Icons.newspaper),
                      subtitle: Text("Not Boycott..."),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("news_details_page");
                        },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ],
                ),
              ));
            } else if (snapshot.hasData) {
              NewsModel? Newsdatas = snapshot.data;
              return (Newsdatas == null)
                  ? Center(
                      child: Text("No data......"),
                    )
                  : Container(
                      child: Column(
                      children: [
                        Text("${Newsdatas.country}"),
                        Text("${Newsdatas.description}"),
                        Text("${Newsdatas.published_at}"),
                        Text("${Newsdatas.category}"),
                        Text("${Newsdatas.title}"),
                        Text("${Newsdatas.author}"),
                      ],
                    ));
            }
            return Container(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child:
                    LoadingAnimationWidget.beat(color: Colors.red, size: 130),
              ),
            );
          }),
    );
  }
}
