import 'package:flutter/material.dart';
import 'package:simple_crypto/theme.dart';
import 'package:simple_crypto/widgets/browse.dart';
import 'package:simple_crypto/widgets/crypto.dart';
import 'package:simple_crypto/models/crytpo_card.dart';
import 'package:simple_crypto/models/browse_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Shadam',
                            style: titleStyle,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Your portofolio looks great today',
                            style: subStyle,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/profile.png',
                        width: 36,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset('assets/Card.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Assets',
                        style: titleStyle,
                      ),
                      Text(
                        'View All',
                        style: descStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CryptoView(Crypto(
                    imageUrl: 'assets/eth.png',
                    name: 'Ethereum',
                    price: '60.000.005',
                    percent: '5',
                  )),
                  const SizedBox(
                    height: 14,
                  ),
                  CryptoView(
                    Crypto(
                      imageUrl: 'assets/btc.png',
                      name: 'Bitcoin',
                      price: '30.000.002',
                      percent: '2',
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CryptoView(
                    Crypto(
                      imageUrl: 'assets/cdn.png',
                      name: 'Ethereum',
                      price: '20.000.003',
                      percent: '3',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended to Buy',
                        style: titleStyle,
                      ),
                      Text(
                        'View All',
                        style: descStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 156,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BrowseCard(Browse(
                            imageUrl: 'assets/icon1.png',
                            name: 'Tron',
                            price: '15.00',
                            percent: '5,09')),
                        const SizedBox(
                          width: 14,
                        ),
                        BrowseCard(
                          Browse(
                              imageUrl: 'assets/icon2.png',
                              name: 'Stellar',
                              price: '8,09',
                              percent: '2.01'),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        BrowseCard(
                          Browse(
                            imageUrl: 'assets/icon3.png',
                            name: 'Xrp Ripple',
                            price: '4,09',
                            percent: '1,01',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 28,
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/home_icon.png',
                        width: 24,
                      ),
                      Image.asset(
                        'assets/chart_icon.png',
                        width: 24,
                      ),
                      Image.asset(
                        'assets/mail_icon.png',
                        width: 24,
                      ),
                      Image.asset(
                        'assets/setting_icon.png',
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
