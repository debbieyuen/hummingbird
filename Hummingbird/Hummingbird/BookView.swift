
//
//  ContentView.swift
//  classDemo
//
//  Created by Debbie Yuen on 6/7/20.
//  Copyright © 2020 Debbie Yuen. All rights reserved.
//

import SwiftUI

let paths = Bundle.main.paths(forResourcesOfType: "png", inDirectory: "pecs_icons")
let default_paths = Bundle.main.paths(forResourcesOfType: "png", inDirectory: "pecs_icons")


struct BookView: View {
    init() {
        print("Debbie paths \(paths)")
        print("Debbie default paths \(paths)")
        for item in paths {
            print("Found \(item)")
        }
    }
    
//    @State var imageName: String = "image_1"
//    @State var imageName1: String = default_paths[0]
//    @State var imageName2: String = default_paths[0]
    @State var buttonWidth: CGFloat = 150
    @State var buttonHeight: CGFloat = 80
    
    var body: some View {
            VStack{
                HStack{
                    Button(action:{
                    }){
                        //Text("Button 1")
//                        Image(uiImage: UIImage(named:
//                            imageName1)!)
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 150.0, height: 80.0)
                    }
                    
                    Button(action: {
                    }) {
                        //Text("Button 2")
//                        Image(uiImage: UIImage(named:
//                        imageName2)!)
//                        .renderingMode(.original)
//                        .resizable()
//                        .frame(width: 150.0, height: 80.0)
                    }
                }
                ScrollView{
                ForEach(paths, id: \.self){ path in
                    Button(action: {
                        //print(path)
//                        self.imageName2 = self.imageName1
//                        self.imageName1 = path
                    }) {
                        Image(uiImage: UIImage(named: path)!)
                                           .renderingMode(.original)
                                           .resizable()
                            .frame(width: self.buttonWidth, height: self.buttonHeight, alignment: .center)
                                           //.frame(width: 200.0, height: 100.0)
                                            .padding()
                        
                    }
                }
            }
        }
    }

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
}
