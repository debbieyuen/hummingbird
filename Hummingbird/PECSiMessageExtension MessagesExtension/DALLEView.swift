//
//  DALLEView.swift
//  Hummingbird
//
//  Created by Debbie Yuen on 11/13/22.
//

import SwiftUI

struct DataStruct: Decodable {
    let url: String
}

struct DallEStruct: Decodable {
    let created: UInt64
    let data: [DataStruct]
}

struct dalleimages: Identifiable {
    let id = UUID()
    var url: String
}

struct DALLEView: View {
    
    // Stores all DALL-E images
    @State var images = [dalleimages]()
    @AppStorage("query") var query: String = ""
    
    //DallE Functions
    func dalle(prompt: String, n: Int64) {
        
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer " + OPENAI_API_KEY, forHTTPHeaderField: "Authorization")
        
        // HTTP Post Requests: https://developer.apple.com/forums/thread/666662
        let body: [String: Any?] = ["prompt": prompt, "n": n, "size": "256x256"]
        let finalBody = try? JSONSerialization.data(withJSONObject: body)
        request.httpMethod = "POST"
        request.httpBody = finalBody
        
        //        print("the url = \(String(contentsOf: request))")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            print("\(request.httpMethod!) \(request.url!)")
            print(request.allHTTPHeaderFields!)
            print(String(data: request.httpBody ?? Data(), encoding: .utf8)!)
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if(response.statusCode == 400) {
                print("HTTP Request Failed \(String(describing: error))")
            }
            
            if let data = data {
                let decoder = JSONDecoder()
                var result:DallEStruct
                do{
                    result = try decoder.decode(DallEStruct.self, from: data)
                    for i in 0 ..< result.data.count {
                        var r = dalleimages(url: result.data[i].url)
                        images.append(r)
                    }
                    //                    print(result)
                    //                    var r = dalleimages(url: result.data[0].url)
                    //                    images.append(r)
                } catch {
                    print(error)
                }
                
                
                
            } else if let error = error {
                print("HTTP Request Failed \(error)")
            }
        }
        
        task.resume()
    }
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Image(systemName: "rectangle.and.text.magnifyingglass")
                        .foregroundColor(query == "" ? .gray : .primary)
                    TextField("Search here: 3D render of a cute tropical fish in an aquarium on a dark blue background, digital art", text: $query)
                        .font(.headline)
                }
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(15)
                .onSubmit {
                    images.removeAll()
                    self.dalle(prompt: query, n: 4)
                }
                Spacer()
                if images.isEmpty && query != "" {
                    ProgressView()
                    Spacer()
                } else {
//                    CardStack(images) { source in
//                        Link(destination: URL(string: source.url)!) {
//                            AsyncImage(url: URL(string: source.url)) { image in
//                                image
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .frame(width: 300, height:300)
//                            .cornerRadius(25)
//                        }
//                    }
                    Spacer()
                    
                }
            }.padding()
            
        }
        .onAppear {
            if query != "" {
                self.dalle(prompt: query, n: 4)
            }
        }
    }
    
    //    func callData() {
    //        images = [DImage]()
    //        let url = URL(string: "https://dalle2.vercel.app/api/dalle2?k=\(token)&q=\(query.replacingOccurrences(of: " ", with: "%20").replacingOccurrences(of: "\"", with: "'"))")!
    //        let task = URLSession.shared.dataTask(with: url) { data, response, error in
    //            guard let data = data else {
    //                print(String(describing: error))
    //                return
    //            }
    //            let decoder = JSONDecoder()
    //            do {
    //                let result = try decoder.decode(Model.self, from: data)
    //                var id = 0
    //                for i in result.result {
    //                    images.append(DImage(id: id, url: i.generation.image_path))
    //                    id += 1
    //                }
    //                print(images)
    //            } catch {
    //                print(error)
    //            }
    //        }
    //        task.resume()
    //    }
}

struct DALLEView_Previews: PreviewProvider {
    static var previews: some View {
        DALLEView()
    }
}

class DALLEView_HostingPreviews: UIHostingController<DALLEView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: DALLEView())
    }
}
