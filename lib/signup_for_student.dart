import 'package:flutter/material.dart';

import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  alignment: Alignment.centerLeft,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() ));
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 20,
                    )),
              ],
            ),
            Flexible(
              child: Container(
                width: 327,
                height: 327,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Container(
              height: 30,
              child: Text(
                'Вітаємо!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF081E3F),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: 327,
              child: Text(
                'Для того, щоб розпочати користування, увійдіть за допомогою корпоративної пошти',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6D768E),
                ),
              ),
            ),
            SizedBox(height: 32),
            Container(
              width: 327,
              height: 54,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),         /// бордер радиус надо сделать
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(height: 14),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(327, 49)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
              ),
                onPressed: () => null, child: Text('Продовжити',)),
            
          ],
        ),
      ),
    );
  }
}
