//
//  MusicPlayer.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/3/21.
//

import SwiftUI

struct MiniMusicPlayer: View {
    
//    @Binding var isNavBarHidden: Bool
    
    var body: some View {
        HStack{
            NavigationLink(destination: MusicPlayer()){
                        Image(systemName: "person.crop.square.fill")
                            .font(.system(size: 58))
                            .foregroundColor(.white)
                            
                        Text("Title..........")
                            .font(.system(size: 25))
                            
                    }
            Spacer()
            Button(action: {
                print("play")
            }, label: {
                Image(systemName: "play.fill")
                    .font(.system(size: 36))
                    .foregroundColor(.white)
                    
            })
            .padding()
            Button(action: {
                print("next")
            }, label: {
                HStack(spacing: -5){
                    Image(systemName: "play.fill")
                        .font(.system(size: 33))
                        .foregroundColor(.white)
                    Image(systemName: "play.fill")
                        .font(.system(size: 33))
                        .foregroundColor(.white)
                }
                
                    
            })
            .padding()
        }
        .frame(maxWidth:.infinity)

        .background(Color(ColorComponents.playerBackgroudColor))
    }
}

//struct MiniMusicPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniMusicPlayer().previewLayout(.sizeThatFits)
//    }
//}
