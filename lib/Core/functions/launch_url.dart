import 'package:bookly_app/Core/functions/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackbar(context, 'can not launch $url');
    }
  }
}
