//
//  firebase_authApp.swift
//  firebase-auth
//
//  Created by Albert Kornas on 1/22/22.
//

import SwiftUI
import Firebase

@main
struct firebase_authApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
