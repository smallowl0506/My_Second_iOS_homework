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
                Section(header: Text("Poppin'Party")){
                    ForEach(po_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: po_chars[item])){
                            CharRow(char: po_chars[item])
                        }
                    }
                }
                Section(header: Text("Roselia")){
                    ForEach(ro_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: ro_chars[item])){
                            CharRow(char: ro_chars[item])
                        }
                    }
                }
                Section(header: Text("Afterglow")){
                    ForEach(af_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: af_chars[item])){
                            CharRow(char: af_chars[item])
                        }
                    }
                }
                Section(header: Text("Pastel*Palettes")){
                    ForEach(pa_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: pa_chars[item])){
                            CharRow(char: pa_chars[item])
                        }
                    }
                }
                Section(header: Text("Hello, Happy World!")){
                    ForEach(he_chars.indices){ (item) in
                        NavigationLink(destination: CharDetail(char: he_chars[item])){
                            CharRow(char: he_chars[item])
                        }
                    }
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
