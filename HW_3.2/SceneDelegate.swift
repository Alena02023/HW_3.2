//
//  SceneDelegate.swift
//  HW_3.2
//
//  Created by Алена on 02.04.2021.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let contentView = ContentView()


        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIApplication.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil
        )
    }
}
