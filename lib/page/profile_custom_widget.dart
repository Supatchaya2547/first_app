import 'package:first_app/components/custom_widget_profile_card.dart';
import 'package:flutter/material.dart';

class ProfileCustomWidget extends StatefulWidget {
  const ProfileCustomWidget({super.key});

  @override
  State<ProfileCustomWidget> createState() => _ProfileCustomWidgetState();
}

class _ProfileCustomWidgetState extends State<ProfileCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgetProfileCard(
              name: 'Supatchaya Benjanuwat',
              position: 'Programer',
              email: 'benjanuwat_s2@silpakorn.edu',
              phoneNumber: '0958092269',
              imageUrl: 'https://img1.wsimg.com/isteam/ip/99e5fccf-52f5-4062-930f-35ad17725b53/98B2CEB5-00A9-43E6-9BF8-4EEE906D7A41.jpeg',
              ),
          ],
        ),
      ),
    );
  }
}