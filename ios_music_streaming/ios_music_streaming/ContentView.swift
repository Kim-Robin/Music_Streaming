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
      
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            MenuBar()
            MiniMusicPlayer()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
