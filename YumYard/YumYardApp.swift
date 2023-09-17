//
//  YumYardApp.swift
//  YumYard
//
//  Created by Mohamed Atallah on 17/09/2023.
//

import SwiftUI

@main
struct YumYardApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
