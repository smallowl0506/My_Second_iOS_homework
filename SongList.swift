//
//  SongList.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI


struct SongList: View {
    var body: some View {
        NavigationView{
            List (songs.indices){ (item) in
                    NavigationLink(destination: SongDetail(song: songs[item])){
                         SongRow(song: songs[item])
                    }
            }
            .navigationBarTitle("邦邦歌曲介紹")
        }
        
       
    }
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
