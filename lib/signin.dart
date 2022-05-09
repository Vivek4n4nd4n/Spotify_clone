import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Image(
                  image: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AKedOLQ5u-ZPcc4tZZ3tO5xYIggyRGwJFGWtz2EhV9qxbmI=s900-c-k-c0x00ffffff-no-rj',
                  ),
                  fit: BoxFit.fill,
                )),
            SizedBox(
              width: 05,
            ),
            ElevatedButton(
              onPressed: (_launchURL),
              child: Text(
                'flutter signin',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        )));
  }

  _launchURL() async {
    const url = 'https://www.google.com/search?q=googlehome+page&sxsrf=ALiCzsbcgtAS6L_heCmcmL1B4dwaIw6ZuA%3A1652092042421&ei=iux4YuiyGZGRseMP-bah-AI&oq=googlehome+page&gs_lcp=Cgdnd3Mtd2l6EAEYADIHCCMQsAMQJzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwAzIHCAAQRxCwA0oECEEYAEoECEYYAFAAWABgghdoAXABeACAAQCIAQCSAQCYAQDIAQnAAQE&sclient=gws-wiz';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
