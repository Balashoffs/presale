// import 'dart:math' as math;
//
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:football_app/src/presentation/core/themes/app_colors.dart';
// import 'package:timezone/data/latest_all.dart';
// import 'package:timezone/timezone.dart';
//
// abstract class LocalNotifications {
//   const LocalNotifications();
//
//   Future<bool> initAndSetup();
//   void showNotification({
//     required int id,
//     required String title,
//     required String body,
//   });
//   void scheduleNotification({
//     required String title,
//     required String body,
//     required int timestamp,
//   });
//   void cancelNotification(int id);
//   void cancelAllNotifications();
// }
//
// class LocalNotificationsImpl implements LocalNotifications {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
//
//   LocalNotificationsImpl(this._flutterLocalNotificationsPlugin) {
//     initializeTimeZones();
//   }
//
//   static final _modulo = math.pow(2, 31).toInt();
//   static const _defaultAndroidNotificationChannel = AndroidNotificationChannel(
//     'high_importance_channel',
//     'События',
//     importance: Importance.high,
//   );
//   static const _reminderAndroidNotificationChannel = AndroidNotificationChannel(
//     'reminder_channel',
//     'Напоминания',
//     importance: Importance.high,
//   );
//
//   @override
//   Future<bool> initAndSetup() => _flutterLocalNotificationsPlugin
//           .initialize(
//         const InitializationSettings(
//           android: AndroidInitializationSettings('@mipmap/ic_launcher'),
//           iOS: DarwinInitializationSettings(
//             requestAlertPermission: true,
//             requestBadgePermission: true,
//             requestSoundPermission: true,
//           ),
//         ),
//       )
//           .then(
//         (result) async {
//           await _flutterLocalNotificationsPlugin
//               .resolvePlatformSpecificImplementation<
//                   AndroidFlutterLocalNotificationsPlugin>()
//               ?.createNotificationChannel(_defaultAndroidNotificationChannel);
//
//           await _flutterLocalNotificationsPlugin
//               .resolvePlatformSpecificImplementation<
//                   AndroidFlutterLocalNotificationsPlugin>()
//               ?.requestPermission();
//
//           return result ?? false;
//         },
//       );
//
//   @override
//   void showNotification({
//     required int id,
//     required String title,
//     required String body,
//   }) =>
//       _flutterLocalNotificationsPlugin.show(
//         id % _modulo,
//         title,
//         body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             _defaultAndroidNotificationChannel.id,
//             _defaultAndroidNotificationChannel.name,
//             color: AppColorsDark.primary90,
//           ),
//         ),
//         payload: '$title $body',
//       );
//
//   @override
//   void scheduleNotification({
//     required String title,
//     required String body,
//     required int timestamp,
//   }) {
//     final time = TZDateTime.fromMillisecondsSinceEpoch(local, timestamp);
//
//     if (time.isAfter(TZDateTime.now(local))) {
//       _flutterLocalNotificationsPlugin.zonedSchedule(
//         timestamp % _modulo,
//         title,
//         body,
//         TZDateTime.fromMillisecondsSinceEpoch(local, timestamp),
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             _reminderAndroidNotificationChannel.id,
//             _reminderAndroidNotificationChannel.name,
//           ),
//         ),
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime,
//       );
//     }
//   }
//
//   @override
//   void cancelAllNotifications() => _flutterLocalNotificationsPlugin.cancelAll();
//
//   @override
//   void cancelNotification(int id) =>
//       _flutterLocalNotificationsPlugin.cancel(id % _modulo);
// }
