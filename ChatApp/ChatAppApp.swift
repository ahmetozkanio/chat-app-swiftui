//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Ahmet Özkan on 8.10.2023.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
