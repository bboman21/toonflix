import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Slena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.75),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$9 999 999',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xffFFC20B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xff1D2022),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '7 256',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  cardPosition: 0,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '15 884',
                  icon: Icons.attach_money_rounded,
                  isInverted: true,
                  cardPosition: -20,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '41 776 513',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: false,
                  cardPosition: -40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
