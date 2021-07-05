//
//  MainPage.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/2/21.
//

import SwiftUI

struct MainPage: View {
//    @Binding var isNavBarHidden: Bool
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 0){
                Text("information")
                    .padding()
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
                Spacer()
                MiniMusicPlayer()
                Divider()
                MenuBar()
            }
            .frame(
                minWidth:0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .ignoresSafeArea()
        
        
        
    }
}



//struct MainPage_Previews: PreviewProvider {
//    @State var isNavBarHidden: Bool = true
//
//    static var previews: some View {
//        MainPage(isNavBarHidden: self.$isNavBarHidden).previewLayout(.sizeThatFits)
//    }
//}
