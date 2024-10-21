import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          'Корзина',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CartItem(
              title: 'Клинический анализ крови с лейкоцитарной формулой',
              price: 690,
              quantity: 1,
            ),
            SizedBox(height: 16),
            CartItem(
              title: 'ПЦР-тест на определение РНК коронавируса стандартный',
              price: 1800,
              quantity: 1,
            ),
            SizedBox(height: 16),

            // Выравниваем сумму и цену по краям контейнеров с услугами
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Отступы слева и справа, такие же как у обводки
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Сумма',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    '2490 Р',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),

            Spacer(), // Отправляем кнопку вниз
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50), // Кнопка растягивается на всю ширину
              ),
              onPressed: () {
                // Логика оформления заказа
              },
              child: Text(
                'Перейти к оформлению заказа',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Виджет для отображения элемента в корзине
class CartItem extends StatelessWidget {
  final String title;
  final int price;
  final int quantity;

  const CartItem({
    required this.title,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Название услуги
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat-Regular',
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Цена
              Text(
                '$price Р',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              // Изменение количества и пациенты
              Row(
                children: [
                  // Пациенты
                  Text(
                    '$quantity пациент${quantity > 1 ? 'а' : ''}', // Обработка множественного числа
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Логика уменьшения количества
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Логика увеличения количества
                    },
                  ),
                ],
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
    home: Cart(),
  ));
}
