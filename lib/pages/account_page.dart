import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Stack(children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Color(0xFF2B2B34)),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Color(0xFF2D9CDB).withOpacity(0.1),
                        )
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/02/16/14/38/portrait-3157821_1280.jpg'))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Color(0xFF2B2B34)),
                      color: Color(0xFF2D9CDB),
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              SizedBox(height: 20),
              Text(
                'Вітаю, Семен!',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: null,
                child: Text(
                  'Загальні',
                  style: Theme.of(context).textTheme.headline2,
                ),
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                  fixedSize: MaterialStateProperty.all(Size.fromWidth(327)),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2D9CDB).withOpacity(0.1)),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(327)),
                    alignment: Alignment.centerLeft,
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () => onPressed(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Пароль',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ])),
              SizedBox(height: 20),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2D9CDB).withOpacity(0.1)),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(327)),
                    alignment: Alignment.centerLeft,
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () => onPressed(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Політика конфіденційності',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ])),
              SizedBox(height: 20),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2D9CDB).withOpacity(0.1)),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(327)),
                    alignment: Alignment.centerLeft,
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () => onPressed(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Про додаток',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ])),
              SizedBox(height: 40),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xFF2D9CDB).withOpacity(0.1)),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(327)),
                    alignment: Alignment.centerLeft,
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  onPressed: () => onPressed(),
                  child: Text('Вихід з аккаунту',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.apply(color: Color(0xFFFF0000).withOpacity(0.5)))),
            ],
          ),
        ),
      ),
    );
  }

  onPressed() {}
}

class AvatarButton {}
