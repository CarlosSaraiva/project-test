import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> initNotification() async {
  //Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.init(DotEnv().env['ONESIGNAL_TOKEN'], iOSSettings: {
    OSiOSSettings.autoPrompt: false,
    OSiOSSettings.inAppLaunchUrl: false
  });

  OneSignal.shared
      .setInFocusDisplayType(OSNotificationDisplayType.notification);

  await OneSignal.shared
      .promptUserForPushNotificationPermission(fallbackToSettings: true);
}
