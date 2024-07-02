import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget accountItem({required int counter, required String title}) {
    return Column(
      children: [
        Text(
          counter.toString(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }

  Widget orderListTile({
    required String title,
    String? subtitle,
    required IconData leadingIcon,
  }) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        size: 30,
        color: Colors.deepOrange,
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(
        Icons.chevron_right,
      ),
      onTap: () {},
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
            const Text(
              'Faisal Nasir',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                accountItem(counter: 50, title: 'Orders'),
                accountItem(counter: 10, title: 'Vouchers'),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(
              thickness: 1,
              indent: 24,
              endIndent: 24,
            ),
            orderListTile(
              title: 'Past Orders',
              // subtitle: 'Here you find your past orders',
              leadingIcon: Icons.shopping_cart,
            ),
            const Divider(
              thickness: 1,
              indent: 24,
              endIndent: 24,
            ),
            orderListTile(
              title: 'Available Vouchers',
              // subtitle: 'Here you find your past orders',
              leadingIcon: Icons.card_giftcard,
            ),
            const Divider(
              thickness: 1,
              indent: 24,
              endIndent: 24,
            ),
          ],
        ),
      ),
    );
  }
}
