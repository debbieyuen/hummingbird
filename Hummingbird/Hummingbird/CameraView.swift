//
//  CameraView.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 5/28/23.
//

import Foundation
import SwiftUI

struct CameraView: View {
    var body: some View {
        VStack {
            // Top Bar
            HStack {}
                .frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
                .background(Color.red)
            // Icons
            HStack {
                
            }
        } .onOpenURL { url in
            print("Received deep link: \(url)")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
