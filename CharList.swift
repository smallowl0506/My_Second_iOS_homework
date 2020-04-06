//
//  CharList.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI


struct CharList: View {
    var body: some View {
       /*List {
            CharRow(char: Char(name:"kasumi",position:"vocalists"))
            CharRow(char: Char(name:"arisa",position:"keyboard"))
            CharRow(char: Char(name:"saaya",position:"drummer"))
            CharRow(char: Char(name:"rimi",position:"bass"))
            CharRow(char: Char(name:"tae",position:"guitar"))
        }*/
        /*List (0..<chars.count){ (item) in
            CharRow(char: chars[item])
        }*/
        NavigationView{
           /* List (chars.indices){ (item) in
                    NavigationLink(destination: CharDetail(char: chars[item])){
                         CharRow(char: chars[item])
                    }
            }
            .navigationBarTitle("邦邦角色介紹")*/
            List {
                Group {
                    SectionView(headerText:"Poppin'Party",charArray:po_chars)
                    SectionView(headerText:"Roselia",charArray:ro_chars)
                    SectionView(headerText:"Afterglow",charArray:af_chars)
                    SectionView(headerText:"Pastel*Palettes",charArray:pa_chars)
                    SectionView(headerText:"Hello, Happy World!",charArray:he_chars)
                }
                Section(header: Text("Morfonica")){
                    Text("敬請期待")
                }
                Section(header: Text("RAISE A SUILEN")){
                    Text("敬請期待")
                }
                Section(header: Text("神秘人物")){
                    ForEach(sp_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: sp_chars[item])){
                            CharRow(char: sp_chars[item])
                        }
                    }
                }
                Section(header: Text("動畫")){
                        NavigationLink(destination: AnimationDemo()){
                            Text("點我看動畫")
                        }
                    
                }
                Section(header: Text("SFsymbol")){
                        NavigationLink(destination: SFDemo()){
                            Text("點我看Demo")
                        }
                    
                }
                Section(header: Text("grid layout")){
                        NavigationLink(destination: gridDemo()){
                            Text("點我看漂亮照片牆")
                        }
                    
                }
            }
            .navigationBarTitle("邦邦角色介紹",displayMode: .inline)
        }
        
       
    }
}

struct CharList_Previews: PreviewProvider {
    static var previews: some View {
        CharList()
    }
}

struct SectionView: View {
    var headerText: String
    var charArray: [Char]
    var body: some View {
        Section(header: Text(headerText)){
            ForEach(charArray.indices){ (item) in
                NavigationLink(destination: CharDetail(char: self.charArray[item])){
                    CharRow(char: self.charArray[item])
                }
            }
        }
    }
}
