//
//  PizzaShopAppApp.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct PizzaShopAppApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
