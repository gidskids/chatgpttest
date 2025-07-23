import UIKit
import AppsFlyerLib

class AppDelegate: NSObject, UIApplicationDelegate, AppsFlyerLibDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // TODO: Replace with your own AppsFlyer dev key and Apple App ID
        AppsFlyerLib.shared().appsFlyerDevKey = "<AF_DEV_KEY>"
        AppsFlyerLib.shared().appleAppID = "<APPLE_APP_ID>"
        AppsFlyerLib.shared().delegate = self
        AppsFlyerLib.shared().isDebug = true
        AppsFlyerLib.shared().start()
        return true
    }

    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        AppsFlyerLib.shared().handleOpen(url, options: options)
        return true
    }

    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        AppsFlyerLib.shared().continue(userActivity, restorationHandler: nil)
        return true
    }

    // MARK: - AppsFlyerLibDelegate
    func onConversionDataSuccess(_ conversionInfo: [AnyHashable : Any]) {
        print("Conversion data: \(conversionInfo)")
    }

    func onConversionDataFail(_ error: Error) {
        print("Conversion data error: \(error)")
    }
}
