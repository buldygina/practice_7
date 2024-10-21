import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          'Каталог услуг',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Центрирование по вертикали
            children: [
              ServiceItem(
                title: 'ПЦР-тест на определение РНК коронавируса стандартный',
                price: 1800,
                duration: '2 дня',
              ),
              SizedBox(height: 16),
              ServiceItem(
                title: 'Клинический анализ крови с лейкоцитарной формулой',
                price: 690,
                duration: '1 день',
              ),
              SizedBox(height: 16),
              ServiceItem(
                title: 'Биохимический анализ крови, базовый',
                price: 2440,
                duration: '1 день',
              ),
              Spacer(),  // Проставляем дополнительный "отступ" после элементов, чтобы кнопки не съезжали
            ],
          ),
        ),
      ),
    );
  }
}

// Виджет для отображения услуги в каталоге
class ServiceItem extends StatelessWidget {
  final String title;
  final int price;
  final String duration;

  const ServiceItem({
    required this.title,
    required this.price,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 136,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    duration,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '$price Р',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat-Regular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Логика для добавления в корзину
                },
                child: Text(
                  'Добавить',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}
