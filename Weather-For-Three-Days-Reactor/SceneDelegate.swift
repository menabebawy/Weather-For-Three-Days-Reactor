//
//  SceneDelegate.swift
//  Weather-For-Three-Days-Reactor
//
//  Created by Mena Bebawy on 3/26/20.
//  Copyright © 2020 Mena. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = UINavigationController()

        guard let navigationController = window?.rootViewController as? UINavigationController else { return }

        Startup(navigationController: navigationController).build().forEach { $0.execute() }

        window?.makeKeyAndVisible()
    }

}
