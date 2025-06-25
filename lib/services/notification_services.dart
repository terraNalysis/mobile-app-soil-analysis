// import 'dart:convert';
// import 'dart:math';
// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:get/get.dart';
// import 'package:googleapis_auth/auth_io.dart';
// import 'package:http/http.dart' as http;

// class NotificationServices extends GetxService {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//   String? token;

//   @override
//   Future<void> onInit() async {
//     await checkNotificationPermission();
//     super.onInit();
//   }

//   Future<String> getAccessToken() async {
//     var serviceAccountJson = {
//       "type": "service_account",
//       "project_id": "transatrack",
//       "private_key_id": "330e009ffa0bd0121ba9feee7d53c6c33c9942ef",
//       "private_key":
//           "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCzhXqLpBN77X6a\nZj1ZVgr0MyveqCrNq2UwYMkylsJiZrGfQ2jV+DhMW+qM7ppReBB/2mfE8nCBBimh\n08A6G4RPWncxyE67ropGlvPyVXyveUzRoZzRO0xryjaWejvMR2D3tQgeKl+VIa45\nPPvsfn6GONtmYZ0LxHoxg8WEimq+f2rVu4e+6otNEHwCe70IdYvvhe39yCY5naDY\ni+yRVK++9RQNe5DqmFHBSZYW4ZoID/7CZh4lCEH+9dXLMc0tRtJqu4lYDvyECV4W\n3Lsh8JV3IC8/KRzaWuE0FhglsJWF3hjNS4dPyWjZcj4ywc/MOxzA3OhpUBMjeeLH\nxEijSZEJAgMBAAECggEABcaTGUAHonKTIquMaL3kb1PgIvM9IU3U3RgYEQkZqunL\n6ChWjJ/GS+qfIragf2OCAGMJ+KOmK/iDSWITKqts99KcyBy+L7qfV0MPCSpn7wtT\nheERtweV31frpq67EsjvHTkVUEcjuRwSy2OjZUnyjyXwJRyZ3WGOXt5y8d80LPnF\nrkMea1Cb2NhhS4gC7ZXNnim4jaDBxlyk3SkCvhXCOSgyVGV/p6DiSxD76BPgACq0\niF6OWDdllc+bCrRdRZrAuRG5VZNSR+xw9gFh80mHw23Bkz/hC4QV4Y5+WOlppDIF\n6+1TkKkGD7GJ2rOzABG6zWklYhU5iXlzyR9g35K++wKBgQDXVU2ULOSyYAxoEVYl\nIE+WyZEP6UFM93mtVuXTQ9ovRfESCZZWxvG2ot9i/f6NoNbNkG69bB0GosoEOFqF\nzFq9rJiovJPfq/F5+Ny4zF5iFemWc4iImHkbmhRZew8vVu84tHSDgSQtpvehRFsl\nvvEh+7/R4nMhg5RcNUxEKng2rwKBgQDVbMjtwCgQ9rOQVzfe+4vcBRK1fFuysfjS\ncfDmuO3eJ0Dl9RqVAG+tCIbbP0ewyrJWpGM6Qw7Uf2snUH/8Sco6R/JibCvobK0f\nQIAbBXDOTuCiwCjE5Wjq27Tm3ac4dUWr9MACDF+S5FZdhjjOYfJlO391M493s5Ec\noULmTn2hxwKBgQCgy1gU77kO4d4hz+BN9OS5qmaiRQG4IYxAvgT8T0ybxFSRrYsP\n3ZsdUF4TI6tzwsjj05h95j9+dwz3PcWK5+BShpGwXrDlcxXsiML5U9Ke19IHwNoR\ndhnpXJMZhmT+aqJT65ydnk+Pr4B2cf7GHuEdCUphxgFG42RjvoDm3ffKjQKBgG3Z\npEHbGcRBdoLgoX0/8+i3I74N2BTNzchjpR7cKHKjuZ+i3J+8rb5eGStYEspISiqW\nSgx+3284diqyIG32fQQqa/OEwcTLyv++7zD5R+qoZq7eQR23Bp17oE0D4UIJ+mZb\nf0iOndK5fEp+/1Yay+yXBy+H7lwqLJKT3h80Xy2ZAoGBAJtaYfJ43jlQ9MrVHayB\nnccjURqHnIbf4Rv8iFKoYiA4pXaD/lHiz5Cc9XqOOKI/YwVQ/VFpa7jLVvj5npas\nD3Z0cN4LPZALNUP6gEbAiroMyM+PjEahXrbD2pDTBRb6TeKJYhlzc5rAG0d4mma5\n5EEnr2jnakV+482JdI/bwnEr\n-----END PRIVATE KEY-----\n",
//       "client_email":
//           "firebase-adminsdk-v0fly@transatrack.iam.gserviceaccount.com",
//       "client_id": "108892006232439707894",
//       "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//       "token_uri": "https://oauth2.googleapis.com/token",
//       "auth_provider_x509_cert_url":
//           "https://www.googleapis.com/oauth2/v1/certs",
//       "client_x509_cert_url":
//           "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-v0fly%40transatrack.iam.gserviceaccount.com",
//       "universe_domain": "googleapis.com"
//     };

//     final accountCredentials =
//         ServiceAccountCredentials.fromJson(serviceAccountJson);
//     final scopes = [
//       'https://www.googleapis.com/auth/userinfo.email',
//       'https://www.googleapis.com/auth/firebase.database',
//       'https://www.googleapis.com/auth/firebase.messaging'
//     ];
//     final client = await clientViaServiceAccount(accountCredentials, scopes);
//     final accessToken = client.credentials.accessToken;
//     return accessToken.data;
//   }

//   sendNotification(
//       {required String userToken,
//       required String message,
//       required String title}) async {
//     final String accessToken = await getAccessToken();

//     var body = jsonEncode({
//       'message': {
//         'token': userToken,
//         'notification': {
//           'body': message,
//           'title': title,
//         },
//         "data": {'current_user_fcm_token': userToken}
//       }
//     });
//     await http.post(
//         Uri.parse(
//             'https://fcm.googleapis.com/v1/projects/qt-dental-clinic/messages:send'),
//         headers: <String, String>{
//           "Authorization": "Bearer $accessToken",
//           "Content-Type": "application/json"
//         },
//         body: body);
//   }

//   Future<void> notificationSetup() async {
//     AwesomeNotifications().initialize(
//       null,
//       [
//         NotificationChannel(
//           channelKey: 'basic_channel',
//           channelName: 'Basic notifications',
//           channelDescription: 'Notification channel for basic tests',
//           importance: NotificationImportance.High,
//         ),
//         NotificationChannel(
//           channelKey: 'basic_channel_muted',
//           channelName: 'Basic muted notifications ',
//           channelDescription: 'Notification channel for muted basic tests',
//           importance: NotificationImportance.High,
//           playSound: false,
//         )
//       ],
//     );
//   }

//   Future<void> onForegroundMessage() async {
//     FirebaseMessaging.onMessage.listen(
//       (RemoteMessage message) {
//         if (message.notification != null) {
//           // if (Get.find<StorageService>().storage.read("notificationSound") ==
//           //     true) {
//           //   AwesomeNotifications().createNotification(
//           //     content: NotificationContent(
//           //       id: Random().nextInt(9999),
//           //       channelKey: 'basic_channel',
//           //       title: '${message.notification!.title}',
//           //       body: '${message.notification!.body}',
//           //       notificationLayout: NotificationLayout.BigText,
//           //     ),
//           //   );
//           // } else {
//           AwesomeNotifications().createNotification(
//             content: NotificationContent(
//               id: Random().nextInt(9999),
//               channelKey: 'basic_channel_muted',
//               title: '${message.notification!.title}',
//               body: '${message.notification!.body}',
//               notificationLayout: NotificationLayout.BigText,
//             ),
//           );
//           // }

//           // call_unseen_messages();
//         }
//       },
//     );
//   }

//   Future<void> checkNotificationPermission() async {
//     var res = await messaging.requestPermission();
//     if (res.authorizationStatus == AuthorizationStatus.authorized) {
//       await notificationSetup();
//       await onBackgroundMessage();
//       await onForegroundMessage();
//       // String? token = await messaging.getToken();
//       // Future.delayed(const Duration(seconds: 4), () {
//       //   sendNotification(
//       //       userToken: token!, message: "Sampe notif", title: "Sample");
//       // });
//     }
//   }
// }

// Future<void> onBackgroundMessage() async {
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
// }

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   if (message.notification != null) {
//     // if (Get.find<StorageService>().storage.read("notificationSound") ==
//     //     true) {
//     //   AwesomeNotifications().createNotification(
//     //     content: NotificationContent(
//     //       id: Random().nextInt(9999),
//     //       channelKey: 'basic_channel',
//     //       title: '${message.notification!.title}',
//     //       body: '${message.notification!.body}',
//     //       notificationLayout: NotificationLayout.BigText,
//     //     ),
//     //   );
//     // } else {
//     AwesomeNotifications().createNotification(
//       content: NotificationContent(
//         id: Random().nextInt(9999),
//         channelKey: 'basic_channel_muted',
//         title: '${message.notification!.title}',
//         body: '${message.notification!.body}',
//         notificationLayout: NotificationLayout.BigText,
//       ),
//     );
//     // if (Get.isRegistered<HomeScreenController>() == true &&
//     //     message.data['notif_from'] == "Order Status") {
//     //   Get.find<HomeScreenController>().getOrders();
//     //   if (Get.isRegistered<OrderDetailScreenController>() == true) {
//     //     Get.find<OrderDetailScreenController>().getOrderStatus();
//     //   }
//     // }
//     // if (Get.isRegistered<HomeScreenController>() == true &&
//     //     message.data['notif_from'] == "Chat") {
//     //   Get.find<HomeScreenController>()
//     //       .putMessageIdentifier(order_id: message.data['value']);
//     //   if (Get.isRegistered<OrderDetailScreenController>()) {
//     //     Get.find<OrderDetailScreenController>().hasMessage.value = true;
//     //   }
//     // }
//     // }

//     // call_unseen_messages();
//   }
// }
