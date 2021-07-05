//
//  MusicPlayer.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/4/21.
//

import SwiftUI

struct MusicPlayer: View {
//    @Binding var isNavBarHidden: Bool
    var body: some View {
       VStack(alignment: .leading, spacing: 0){
            Text("album")
                .padding()
            Spacer()
            Text("title")
                .padding()
            Text("album")
                .padding()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
       .background(Color(.blue))
        
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer().previewLayout(.sizeThatFits)
    }
}
