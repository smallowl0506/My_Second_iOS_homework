//
//  AppView.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI

struct AppView: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal,  showsIndicators:false){
                       HStack(spacing: 20){
                           Image("Poppin'Party")
                           //.resizable()
                           .scaledToFill()
                           .frame(width: 20, height: 20)
                           .padding(80)
                           Image("Roselia")
                           //.resizable()
                           .scaledToFill()
                           .frame(width: 20, height: 20)
                           .padding(30)
                            Image("Afterglow")
                            //.resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(80)
                            Image("Pastel*Palettes")
                            //.resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(30)
                            Image("Hello, Happy World!")
                            //.resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(80)
                            Image("Morfonica")
                            //.resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(30)
                            Image("RAS")
                            //.resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .padding(80)
                       }
                   }
                    TabView {
                       CharList()
                           .tabItem {
                               Text("角色")
                               Image(systemName: "music.house.fill")
                       }
                       SongList()
                           .tabItem {
                               Text("歌曲")
                               Image(systemName: "info.circle.fill")
                       }
                   }
                   .accentColor(.red)
        }
       
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

