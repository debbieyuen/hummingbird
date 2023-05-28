//
//  HomeView.swift
//  euphemianew
//
//  Created by Debbie Yuen on 10/25/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack{
                Button("Call") {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(Color.white)
                    .background(Color.yellow)
                    .cornerRadius(15).padding(.leading)
                
                NavigationLink(destination: ContentView(),
                               label: {
                    Button("Book") {}
                    //.frame(width: 100, height: 350)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(Color.white)
                        .background(Color.red)
                    .cornerRadius(15).padding(.trailing) })
                }
            
            HStack{
                Button("Camera") {}
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(15).padding(.leading)
                    
                Button("Clock") {}
                    //.frame(width: 100, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(15).padding(.trailing)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

