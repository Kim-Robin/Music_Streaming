//
//  MenuBar.swift
//  ios_music_streaming
//
//  Created by Robin Kim on 7/3/21.
//

import SwiftUI

struct MenuBar: View{
    let list = ["Music", "Search", "Library"]
    
    var body: some View{
        HStack(alignment: .top){
            ForEach(list, id: \.self){ i in
                Text(i)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom)
            }
        }
        .frame(maxWidth:.infinity, maxHeight: 70)
        .background(Color(ColorComponents.playerBackgroudColor))
        
        
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar().previewLayout(.sizeThatFits)
    }
}
