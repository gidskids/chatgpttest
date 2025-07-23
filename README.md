# AppsFlyer iOS Demo

This repository contains a very small SwiftUI iOS app demonstrating how to integrate the AppsFlyer SDK using Swift Package Manager.

## Getting Started

1. Open Xcode and create a new **iOS App** project, or use the files in `AppsFlyerDemo/` inside an existing project.
2. Replace the generated files with the ones from this repository.
3. Add the AppsFlyer SDK using Xcode's Swift Package Manager support:
   - In Xcode, go to **File > Add Packages...**
   - Enter `https://github.com/AppsFlyerSDK/AppsFlyerFramework` as the package URL and follow the prompts.
4. Update `AppDelegate.swift` with your own AppsFlyer dev key and Apple app ID.
5. Build and run on an iPhone simulator or device.

The `ContentView` displays a simple label. AppsFlyer is initialized in `AppDelegate` at application launch.
