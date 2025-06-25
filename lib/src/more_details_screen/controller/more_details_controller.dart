import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreDetailsController extends GetxController {
  Future<void> visitLink({required String link}) async {
    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Could not launch $link');
    }
  }
}
