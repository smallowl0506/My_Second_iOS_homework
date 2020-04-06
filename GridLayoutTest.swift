//
//  GridLayoutTest.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/6.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI


struct gridDemo: View {
    let names = [["ONENESS","Determination Symphony"],["PASSIONATE ANTHEM","Ringing Bloom"],["LOUDER","BRAVE JEWEL"],["Safe and Sound","Song I am."]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    
    var body: some View {
        List{
            ForEach(names.indices){ (row) in
                HStack(spacing:10){
                    ForEach(self.names[row].indices){ (column) in
                        Image(self.names[row][column])
                        .resizable()
                        .scaledToFill()
                        .frame(width: self.photoWidth, height: self.photoWidth)
                        .clipped()
                    }
                }
                .listRowInsets(EdgeInsets(top:0,leading: 0,bottom: 10,trailing: 0))
            }
            .onAppear{
               // UITableView.appearance().seperatorColor = .clear
            }
        }
        .navigationBarTitle("grid layout測試")
    }
        
       
}

struct gridDemo_Previews: PreviewProvider {
    static var previews: some View {
        gridDemo()
    }
}
