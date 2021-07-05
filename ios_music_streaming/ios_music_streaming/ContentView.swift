//
//  ContentView.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/1/21.
//

import SwiftUI

struct ContentView: View {
//    @State var isNavBarHidden: Bool = true
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(ColorComponents.backgroundColor).ignoresSafeArea()
                MainPage()
//                    .navigationBarHidden(isNavBarHidden)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
