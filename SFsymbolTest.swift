//
//  SFsymbolTest.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/6.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI


struct SFDemo: View {
    var body: some View {
        ZStack{
            Image("background")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Image(systemName:"magnifyingglass")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
            }
        }
        .navigationBarTitle("SFsymbol測試")
    }
        
       
}

struct SFDemo_Previews: PreviewProvider {
    static var previews: some View {
        SFDemo()
    }
}
