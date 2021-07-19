//
//  MusicPlayer.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/3/21.
//

import SwiftUI

struct MiniMusicPlayer: View {
    
//    @Binding var isNavBarHidden: Bool
    
    var animation: Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    // safe area
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    //Volume Slider
    
    @State var volume : CGFloat = 0
    
    // gesture offset
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack{
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            
            HStack(spacing: 15){
                
                // cnetering IMage...
                if expand{Spacer(minLength:0)}
                
                Image(systemName: "person.crop.square.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand{
                    Text("test music")
                        .font(.title2)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer()
                
                if !expand{
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
                
                
            }
            .padding(.horizontal)
            
            VStack(spacing: 15){
                
                Spacer(minLength: 0)
                
                HStack{
                    if expand{
                        Text("Text Music")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action:{}){
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top, 20)
                
                // Live String
                HStack{
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7), Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                    
                    Text("Live")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.1), Color.primary.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                }
                .padding()
                
                // Stop Button
                Button(action: {}){
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                }
                .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15){
                    Image(systemName: "speaker.fill")
                    
                    Slider(value: $volume)
                    
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                
                HStack(spacing: 22){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.up.message")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
                .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
            }
            // stretch effect
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
            
            
        }
        // expand to full screen when clicked
        .frame(maxHeight: expand ? .infinity : 80)
        //Moving the player above the tabbar
        //menu bar height is 49
        .background(
            VStack(spacing: 0){
                BlurView()
                Divider()
            }
            .onTapGesture(perform: {
                withAnimation(.spring()){
                    expand = true
                }
            })
        )
        .cornerRadius(expand ?  20 : 0)
        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value){
        
        //only allowing when its expanded
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value){
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)){
            
            //if value is > than ehight / 3 then closing view
            
            if value.translation.height > height{
                expand = false
            }
            offset = 0
        }
    }
}

//struct MiniMusicPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniMusicPlayer().previewLayout(.sizeThatFits)
//    }
//}
