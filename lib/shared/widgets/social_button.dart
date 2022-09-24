import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final String imageUrl;
  final String url;
  const SocialMediaButton({Key? key, required this.imageUrl, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebView(
              initialUrl: url,
            ),
          ),
        );
      },
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        radius: 24.0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
