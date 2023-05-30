//
//  ScheduleView.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 5/28/23.
//

import Foundation
import SwiftUI

struct ScheduleView: View {
    @State var linkActive = false
    var body: some View {
        VStack {
            // Top Bar
            HStack {
                Text("Schedule")
            }
                .frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
                .background(Color.red)
            // Icons
            HStack {
                
            }
        }
        .onOpenURL { url in
            print("Hi hottie alexy")
            guard
                url.scheme == "Hummingbird",
                url.host == "todo"
            else {return}
            linkActive = true
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
