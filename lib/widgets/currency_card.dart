import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String code, name, amount;
  final IconData icon;
  final bool isInverted;
  double order;

  // 기본 생성자
  CurrencyCard({
    super.key,
    required this.code,
    required this.name,
    required this.amount,
    required this.icon,
    required this.isInverted,
    this.order = 0,
  });

  double makeHeight(double order) {
    if (order != 0) {
      return order = order * -20.0;
    }

    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    order = makeHeight(order);

    print(order);

    return Transform.translate(
      offset: Offset(0, order),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xFF1F2123),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            fontSize: 20,
                            color: isInverted
                                ? Colors.black
                                : Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.1,
                  child: Transform.translate(
                    offset: const Offset(-5, 9),
                    child: Icon(
                      icon,
                      color: isInverted ? Colors.black : Colors.white,
                      size: 88,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
