import UIKit
import Flutter
import GoogleMaps;

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self);
    
    var window: UIWindow?
    
    FirebaseApp.configure();
    GMSServices.provideAPIKey("AIzaSyB5kxFSwVKQBJD9P11ijHV-WTbFMsDTlnE");
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
