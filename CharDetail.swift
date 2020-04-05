//
//  CharDetail.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI

struct CharDetail: View {

   let char: Char

   var body: some View {
        VStack {
            CharImage(char: char)
            Text(char.intro)
                .frame(width: 200, height: 150, alignment: .center)
            .padding(50)
        }
        .navigationBarTitle(char.name)

  }
}
struct CharDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharDetail(char: po_chars[0])
    }
}

struct CharImage: View {
    let char: Char
    
    var body: some View {
        Image(char.name)
            .resizable()
            .scaledToFill()
            .frame(height: 300)
            .clipped()
    }
}
