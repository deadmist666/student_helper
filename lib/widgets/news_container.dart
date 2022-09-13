import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;

  const NewsContainer({Key? key, this.imageUrl, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Color(0xFF2D9CDB).withOpacity(0.1),
        color: Color(0xFF2D9CDB).withOpacity(0.1),
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    title!,
                    style: Theme.of(context).textTheme.headline2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle!,
                  style: Theme.of(context).textTheme.headline3,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 16,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    imageUrl!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 1,
                  color: Color(0xFF2D9CDB),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => print('Button1'),
                        icon: Icon(
                          Icons.recommend,
                          color: Color(0xFF2D9CDB),
                        )),
                    IconButton(
                        onPressed: () => print('Button2'),
                        icon: Icon(
                          Icons.ios_share_outlined,
                          color: Color(0xFF2D9CDB),
                        ))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
