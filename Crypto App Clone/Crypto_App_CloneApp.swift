//
//  Crypto_App_CloneApp.swift
//  Crypto App Clone
//
//  Created by Muhammed Talha Sağlam on 4.05.2022.
//

import SwiftUI

@main
struct Crypto_App_CloneApp: App {

    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
