//
//  ContentView.swift
//  firebase-auth
//
//  Created by Albert Kornas on 1/22/22.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State var loggedIn = false
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button(action: { login() }) {
                Text("Sign in")
            }
        }
        .padding()
    }

    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                loggedIn = false
            } else {
                print("success")
                loggedIn = true
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
