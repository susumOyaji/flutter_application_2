import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'phone sample',
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text(
              'open phone app',
            ),
            onPressed: _openPhoneApp,
          ),
        ],
      ),
    );
  }

  void _openPhoneApp() {
    const tel = '06012345678';
    _launchURL(
      'tel:' + tel,
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      final Error error = ArgumentError('Could not launch $url');
      throw error;
    }
  }
}
