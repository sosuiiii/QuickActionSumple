//
//  SceneDelegate.swift
//  3DTouchSumple
//
//  Created by TanakaSoushi on 2021/05/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    //タスクキル状態からクイックアクションを実行した場合
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let shortcutItem = connectionOptions.shortcutItem {
            handleShortCutItem(item: shortcutItem)
        }
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    //バックグラウンド状態からクイックアクションを実行した場合
    func windowScene(_ windowScene: UIWindowScene,
                     performActionFor shortcutItem: UIApplicationShortcutItem,
                     completionHandler: @escaping (Bool) -> Void) {
        handleShortCutItem(item: shortcutItem)
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

extension SceneDelegate {
    private func handleShortCutItem(item: UIApplicationShortcutItem) {
        switch item.type {
        case "shortcutItem.type(ショートカットアイテムタイプ2)":
            print("タイプ2")
        case "shortcutItem.type(ショートカットアイテムタイプ1)":
        print("タイプ1")
        default:
            break
        }
    }
}

