//
//  MenuBar.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/3/21.
//

import SwiftUI

struct MenuBar: View{
    // Selected TabIndex
    // Default is third
    @State var current = 0
    let list = ["Library", "Search", "Radio"]
    
    var body: some View{
        
        TabView(selection: $current){
            Text(list[0])
                .tag(0)
                .tabItem{
                    Image(systemName: "rectangle.stack.fill")
                    Text(list[0])
                }
            Text(list[1])
                .tag(1)
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text(list[1])
                }
            Text(list[2])
                .tag(2)
                .tabItem{
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text(list[2])
                }
        }
//        HStack(alignment: .top){
//            ForEach(list, id: \.self){ i in
//                Text(i)
//                    .frame(maxWidth: .infinity)
//                    .padding(.bottom)
//            }
//        }
//        .frame(maxWidth:.infinity, maxHeight: 70)
//        .background(Color(ColorComponents.playerBackgroudColor))
        
        
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar().previewLayout(.sizeThatFits)
    }
}
