//
//  CharRow.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/4.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI

struct CharRow: View {
    
    let char: Char
    
    var body: some View {
        ZStack{
            Image("star")
            .resizable()
            //.scaledToFill()
            //.clipped()
            .frame(width: 420, height: 100)
            .frame(maxWidth: 420, maxHeight: 100)
            //.edgesIgnoringSafeArea(.all)
            HStack {
                Image(char.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(char.name)
                    Text(char.position)

                }
                Spacer()
                
            }
        }
        
    }
}

struct CharRow_Previews: PreviewProvider {
    static var previews: some View {
        CharRow(char: Char(name:"kasumi",position:"guitar",intro:"擔任節奏吉他手和主唱，性格樂觀而且行動力很高。"))
            .previewLayout(.sizeThatFits)
    }
}
