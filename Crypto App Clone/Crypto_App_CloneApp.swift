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
    @State var showLaunchView: Bool = true

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
            }
        }
    }
}
