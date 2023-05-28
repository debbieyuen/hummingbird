//
//  ContentView.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 2/17/23.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userID") var userID: String = ""
    
    private var isSignedIn: Bool {
        !userID.isEmpty
    }
    var body: some View {
        VStack {
            // Sign In View
            if !isSignedIn { SignInView()} //not signedin
            else { HomeView() } //signedin
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
