//
//  MusicPlayer.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/3/21.
//

import SwiftUI

struct MusicPlayer: View {
    var body: some View {
        HStack{
            Text("album")
                .padding()
            Text("Title..................")
                .padding()
            Spacer()
            Text("Play")
                .padding()
            Text("Next")
                .padding()
        }
        .frame(maxWidth:.infinity)

        .background(Color(ColorComponents.playerBackgroudColor))
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer().previewLayout(.sizeThatFits)
    }
}
