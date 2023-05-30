//
//  HomeView.swift
//  euphemianew
//
//  Created by Debbie Yuen on 10/25/22.
//

import SwiftUI
import AuthenticationServices


struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    // Call Button
                    NavigationLink(destination: CallView(), label: {
                        Button {} label: { Label("Call", systemImage: "video.bubble.left.fill")}
                            .background(Color.yellow)
                            .buttonStyle(HomeButtonStyle())
                            .cornerRadius(15)
                    })
                    // Book Button
                    NavigationLink(destination: BookView(), label: {
                        Button {} label: { Label("Book", systemImage: "character.book.closed.fill")}
                            .background(Color.red)
                            .buttonStyle(HomeButtonStyle())
                            .cornerRadius(15)
                    })
                }
                
                HStack {
                    // Camera Button
                    NavigationLink(destination: CameraView(), label: {
                        Button {} label: { Label("Camera", systemImage: "camera.fill")}
                            .background(Color.green)
                            .buttonStyle(HomeButtonStyle())
                            .cornerRadius(15)
                    })
                    // Schedule Button
                    NavigationLink(destination: ScheduleView(), label: {
                        Button {} label: { Label("Schedule", systemImage: "calendar.badge.clock")}
                            .background(Color.blue)
                            .buttonStyle(HomeButtonStyle())
                            .cornerRadius(15)
                    })
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

