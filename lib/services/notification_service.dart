import 'dart:convert';

import 'package:driver_app/utils/Constants.dart';
import 'package:driver_app/views/home_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
class FireMessaging {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static initialize ()async{
    await messaging.requestPermission(
        sound: true
    );

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);


    FlutterLocalNotificationsPlugin localNotifications = FlutterLocalNotificationsPlugin();
    /// local notification appear when message sent when the app is in foreground
    localNotifications.initialize(const InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/launcher_icon"),
        iOS: IOSInitializationSettings()
    ), onSelectNotification:(String? payload){
      Get.to(HomePage());
    } );

    AndroidNotificationChannel channel =const AndroidNotificationChannel(
        "id", "name",importance: Importance.high);

    await localNotifications.resolvePlatformSpecificImplementation
    <AndroidFlutterLocalNotificationsPlugin>()!.createNotificationChannel(channel);
     FireMessaging.messaging.app;
    String? token = await FireMessaging.messaging.getToken();
    deviceToken = token!;
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
     Map<String, dynamic> json = jsonDecode(message.data["body"]);
      localNotifications.show(message.notification.hashCode, message.data["title"]+ json["order_id"],
          json["description"]["address"],const NotificationDetails(
              android: AndroidNotificationDetails(
                  "id",
                  "name",
                  icon: "launch_background",
                  importance: Importance.high,
              )
          ));
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      /// called when i click on background notification
      Get.to(HomePage());

    });

  }
}
Future<void> handleBackgroundMessage(RemoteMessage message)async{
  /// called when background notification

}
