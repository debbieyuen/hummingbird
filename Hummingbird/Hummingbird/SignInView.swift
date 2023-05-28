//
//  SignInView.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 5/28/23.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userID") var userID: String = ""
    
    var body: some View {
        SignInWithAppleButton(.continue) {
            request in request.requestedScopes = [.email, .fullName]}
    onCompletion: {result in
        switch result {
        case .success(let auth):
            switch auth.credential {
            case let credential as ASAuthorizationAppleIDCredential:
                // User ID
                let userID = credential.user
                
                // User Info
                let email = credential.email
                let firstName = credential.fullName?.givenName
                let lastName = credential.fullName?.familyName
    
                // Initialization
                self.email = email ?? ""
                self.firstName = firstName ?? ""
                self.lastName = lastName ?? ""
                self.userID = userID
                
            default:
                break
            }
            
        case .failure(let error):
            print(error)
        }
    }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .cornerRadius(15)
            
            Button("Enter"){}
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.system(size: 40))
                .bold()
                .foregroundColor(Color.white)
                .background(Color.yellow)
                .cornerRadius(15)
    }
}
