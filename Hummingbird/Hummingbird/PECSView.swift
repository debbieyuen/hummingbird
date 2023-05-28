////
////  ContentView.swift
////  classDemo
////
////  Created by Debbie Yuen on 6/7/20.
////  Copyright © 2020 Debbie Yuen. All rights reserved.
////
//import SwiftUI
//
//let paths =
//Bundle.main.paths(forResourcesOfType: "png", inDirectory: "icons")
//
//let default_paths = Bundle.main.paths(forResourcesOfType: "png", inDirectory: "default")
//
//
////let buttonWidth = Image.frame(width)
////hi
////let buttonHeight = button.intrinsicContentSize.height
//struct PECSView: View {
//    //Code Lesson 3
//    init(){
//        for item in paths {
//            print("Found \(item)")
//        }
//    }
//    @State var imageName: String = "image_1"
//    @State var imageName1: String = paths[0]
//    @State var imageName2: String = paths[0]
//    @State var buttonWidth: CGFloat = 150
//    @State var buttonHeight: CGFloat = 80
//    
//    var body: some View {
//        //var body: some View {
//        VStack{
//            HStack{
//                Button(action:{
//                }){
//                    //Text("Button 1")
////                    Image(uiImage: UIImage(named: imageName1)!.removeBackground(returnResult: .finalImage)!)
////                    .renderingMode(.original)
//                    .resizable()
//                    .frame(width: 150.0, height: 80.0)
//                }
//                
//                Button(action: {
//                }) {
//                    //Text("Button 2")
////                    Image(uiImage: UIImage(named:imageName2)!.removeBackground(returnResult:.finalImage)!)
////                    .renderingMode(.original)
//                    .resizable()
//                    .frame(width: 150.0, height: 80.0)
//                }
//            }
//            ScrollView{
//                ForEach(paths, id: \.self){ path in
//                    Button(action: {
//                        //print(path)
//                        self.imageName2 = self.imageName1
//                        self.imageName1 = path
//                    }) {
////                        Image(uiImage: UIImage(named: path)!.removeBackground(returnResult: .finalImage)!)
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: self.buttonWidth, height: self.buttonHeight, alignment: .center)
//                        //.frame(width: 200.0, height: 100.0)
//                            .padding()
//                        
//                    }
//                }
//            }
//        }
//    }
//    
//    
//    //       Text("Hello, Debbie!")
//    
//    //        VStack{
//    ////            HStack{
//    ////                Button(action:{
//    ////                    print("HELLO");
//    ////                }){
//    ////                    //Text("1")
//    //                    Image(imageName)
//    //                    .renderingMode(.original)
//    //                    .resizable()
//    //                    .frame(width: 200.0, height: 100.0)
//    //              //  }
//    ////
//    //////                Button(action:{
//    //////                    print("HELLO");
//    //////                }){
//    //////                    Text("2")
//    //////                }
//    ////            }
//    ////        Button(action:{
//    ////            //print("HELLO");
//    ////            self.imageName = "hungry"
//    ////        }){
//    ////            //Text("3")
//    ////            Image("hungry")
//    ////                .renderingMode(.original)
//    ////                .resizable()
//    ////                .frame(width: 150.0, height: 150.0)
//    ////        }
//    //
//    ////            Button(action:{
//    ////                //print("HELLO");
//    ////                self.imageName = "sick"
//    ////            }){
//    ////                //Text("4")
//    ////                Image("sick")
//    ////                .renderingMode(.original)
//    ////                .resizable()
//    ////                .frame(width: 150.0, height: 150.0)
//    //
//    //        }
//    //   }
//    //    }
//    //}
//    struct PECSView_Previews: PreviewProvider {
//        static var previews: some View {
//            PECSView()
//        }
//    }
//}
//
//
//
