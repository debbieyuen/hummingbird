//
//  HomeButtonStyle.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 5/28/23.
//

import Foundation
import SwiftUI

struct HomeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .font(.system(size: 90))
            .bold()
            .foregroundColor(Color.white)
            .cornerRadius(15)
    }
}

