//
//  Search.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/7/21.
//

import SwiftUI

struct Search: View {
    
    @State var search = ""

    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 18){
                HStack{
                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 15){
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    
                    TextField("Search", text: $search)
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                //Grid View of Songs....
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(1...10, id:\.self){index in
//                        Image("p\(index)")
                        Image(systemName: "person.crop.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            //two side padding = 30
                            //spacing = 20
                            //total = 50
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
                .padding(.top,10)
            }
            .padding()
            
            // padding for miniplayer
            .padding(.bottom, 80)
        }
        
        
    }
}
