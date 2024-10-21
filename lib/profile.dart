import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Эдуард',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '+7 900 800-55-33',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'email@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Image.asset(
                'assets/images/order.png',
                width: 40,
                height: 40,
              ),
              title: Text(
                'Мои заказы',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/cards.png',
                width: 40,
                height: 40,
              ),
              title: Text(
                'Медицинские карты',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/adress.png',
                width: 40,
                height: 40,
              ),
              title: Text(
                'Мои адреса',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/settings.png',
                width: 40,
                height: 40,
              ),
              title: Text(
                'Настройки',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400),
              ),
              onTap: () {

              },
            ),

            SizedBox(height: 100),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ответы на вопросы',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Политика конфиденциальности',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Пользовательское соглашение',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 20),
                    // Кнопка выхода
                    TextButton(
                      onPressed: () {
                        // Логика выхода из профиля
                      },
                      child: Text(
                        'Выход',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}
