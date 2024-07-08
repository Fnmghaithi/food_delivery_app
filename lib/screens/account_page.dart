import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget accountItem(
    BuildContext context, {
    required int counter,
    required String title,
  }) {
    return Column(
      children: [
        Text(
          counter.toString(),
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }

  Widget orderListTile(
    BuildContext context, {
    required String title,
    String? subtitle,
    required IconData leadingIcon,
  }) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          size: size.height * 0.03,
          // color: Theme.of(context).primaryColor,
        ),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: Icon(
          Icons.chevron_right,
          size: size.height * 0.03,
        ),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/Faisal.JPG'),
            ),
            const SizedBox(height: 8),
            Text(
              'Faisal Nasir',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                accountItem(context, counter: 50, title: 'Orders'),
                accountItem(context, counter: 10, title: 'Vouchers'),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            orderListTile(
              context,
              title: 'Past Orders',
              // subtitle: 'Here you find your past orders',
              leadingIcon: Icons.shopping_cart,
            ),
            const Divider(),
            orderListTile(
              context,
              title: 'Available Vouchers',
              // subtitle: 'Here you find your past orders',
              leadingIcon: Icons.card_giftcard,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
