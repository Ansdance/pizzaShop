//
//  PizzaShopAppApp.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI
import Firebase
import FirebaseAuth

let screen = UIScreen.main.bounds

@main
struct PizzaShopAppApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
            FirebaseApp.configure()
            print("ok")
            return true
        }
    }
    
}
