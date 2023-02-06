import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double cardPosition;

  final _colorBlack = const Color(0xff1D2022);
  final _colorWhite = const Color(0xffffffff);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.cardPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, cardPosition),
      child: Container(
        clipBehavior: Clip.hardEdge, //카드 외각에 맞춰 오브젝트 커팅
        decoration: BoxDecoration(
          color: isInverted ? _colorBlack : _colorWhite,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _colorWhite : _colorBlack,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: isInverted ? _colorWhite : _colorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          fontSize: 16,
                          color: isInverted ? _colorWhite : _colorBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 1.5, //카드 크기 수정
                child: Transform.translate(
                  offset: const Offset(8, 24), //카드 위치수정
                  child: Icon(
                    icon,
                    color: isInverted ? _colorWhite : _colorBlack,
                    size: 98,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
