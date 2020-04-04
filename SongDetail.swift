//
//  SongDetail.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI

struct SongDetail: View {

   let song: Song

   var body: some View {
        VStack {
            Image(song.name)
            .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            Text(song.lyrics)
                .padding()
        }
        .navigationBarTitle(song.name)

  }
}
struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: songs[0])
    }
}
