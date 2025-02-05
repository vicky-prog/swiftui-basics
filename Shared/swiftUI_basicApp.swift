//
//  swiftUI_basicApp.swift
//  Shared
//
//  Created by vignesh on 05/02/25.
//




import SwiftUI

@main
struct swiftUI_basicApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init(){
        print("App is initializing")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    print("ContentView appeared")
                }
                .onDisappear(){
                    print("ContentView disappeared")
                }
        }
        .onChange(of: scenePhase){ newPhase in
            switch newPhase {
                       case .active:
                           print("App is active")
                       case .inactive:
                           print("App is inactive")
                       case .background:
                           print("App is in background")
                       @unknown default:
                           break
                       }
            
        }
    }
}
