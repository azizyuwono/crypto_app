import 'package:flutter/material.dart';
import 'package:simple_crypto/theme.dart';
import 'package:simple_crypto/models/browse_card.dart';

class BrowseCard extends StatelessWidget {
  final Browse browse;

  // ignore: use_key_in_widget_constructors
  const BrowseCard(this.browse);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 156,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          left: 14,
          right: 14,
          bottom: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              browse.imageUrl,
              width: 42,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              browse.name,
              style: titleStyle.copyWith(
                fontSize: 14,
              ),
            ),
            Row(
              children: [
                Text(
                  '\$${browse.price}',
                  style: titleStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '+${browse.percent}%',
                  style: percentStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              height: 26,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: buttonColor,
                onPressed: () {},
                child: Text('Buy', style: buttonStyle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
