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
        VStack{
            HStack(spacing: 15){
                Image(systemName: "person.crop.square.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                Text("test music")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
            }
            .padding()
        }
        .frame(height: 80)
        //Moving the player above the tabbar
        //menu bar height is 49
        .background(
            VStack(spacing: 0){
                BlurView()
                Divider()
            }
        )
        .offset(y: -48)
    }
}

//struct MiniMusicPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniMusicPlayer().previewLayout(.sizeThatFits)
//    }
//}
