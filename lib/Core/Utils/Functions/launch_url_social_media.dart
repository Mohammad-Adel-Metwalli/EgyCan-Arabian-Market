import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlSocialMedia({required String url}) => launchUrl(Uri.parse(url));