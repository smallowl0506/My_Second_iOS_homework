//
//  SongRow.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI

struct SongRow: View {
    
    let song: Song
    
    var body: some View {
        HStack {
            Image(song.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(song.name)
                Text(song.title)

            }
            Spacer()
            
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song: Song(name:"",title:"",lyrics:""))
            .previewLayout(.sizeThatFits)
    }
}
