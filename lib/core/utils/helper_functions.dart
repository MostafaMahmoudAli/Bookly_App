import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
Future<void>customUrlLauncher({
  required  context,
  required String?url,})async
{
  if(url != null)
  {
    Uri url0 = Uri.parse(url);
    if (await canLaunchUrl(url0)) {
      await launchUrl(url0);
    }else
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(
              "Can't launch $url"
          ),
        ),
      );
    }
  }

}