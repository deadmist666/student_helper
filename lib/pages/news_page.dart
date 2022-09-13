import 'package:figma_design/models/news_list.dart';
import 'package:figma_design/widgets/news_container.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  return NewsContainer(
                    imageUrl: newsList[index].imageUrl,
                    title: newsList[index].newsTitle,
                    subTitle: newsList[index].description,
                  );
                }),
          ),
        ]),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override

  Size get preferredSize => Size.fromHeight(146);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 68,
        ),
        Padding(
          padding: EdgeInsets.only(right: 280),
          child: Text(
            'Новини',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        SizedBox(height: 24),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 35,
          child: TextField(
            textInputAction: TextInputAction.none,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(1),
              filled: true,
              fillColor: Color(0xFF2D9CDB).withOpacity(0.1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'Пошук',
              hintStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ],
    );
  }
}
