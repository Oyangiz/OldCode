//
//  AppDelegate.swift
//
//  Created by Oyangiz on 2019-01-10.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 应用程序启动后用于自定义的替代点。
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //小断
        // 使用此方法可以暂停正在进行的任务，禁用计时器并使图形渲染回调无效。
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // 保存
        // 后台
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // 后台
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // 暂停后刷新
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // 终止
    }


}

