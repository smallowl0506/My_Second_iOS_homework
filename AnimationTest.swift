//
//  AnimationTest.swift
//  My_Second_iOS_homework
//
//  Created by User16 on 2020/4/5.
//  Copyright © 2020 User16. All rights reserved.
//

import Foundation
import SwiftUI


struct AnimationDemo: View {
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    @State private var rotateDegree: Double = 0
    @State private var show = false
    var body: some View {
       VStack{
            Button("奔跑吧，Popinpa") {
                self.moveDistance += 100
                self.opacity -= 0.2
            }
            .font(.title)
            Button("回來吧，Popinpa") {
                self.moveDistance -= 100
                self.opacity += 0.3
            }
            .font(.title)
            Button("旋轉吧，Popinpa"){
                self.rotateDegree += 90
            }
            .font(.title)
            Button("消失吧，yukina_cat"){
                self.show = false
            }
            .font(.title)
            Button("出現吧，yukina_cat"){
            self.show = true
            }
            .font(.title)
            Button( show ?"隱藏!":"現身!"){
                self.show.toggle()
            }
            .font(.title)
            HStack{
                Image("Poppin’PartyQQ")
                               .resizable()
                               .scaledToFill()
                               .frame(width: 200, height: 40)
                               .padding(50)
                               .offset(x: moveDistance, y: 0)
                               .opacity(opacity)
                               .rotationEffect(.degrees(rotateDegree))
                               .animation(
                                Animation.linear(duration: 1)
                                   .repeatCount(3, autoreverses: true)
                               )
                Spacer()
            }
           VStack{
                if show{
                    Image("yukina_cat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 40)
                        .padding(50)
                        .transition(
                            AnyTransition.scale(scale: 3)
                                .combined(with: .opacity)
                            /*.asymmetric(insertion: .scale(scale: 3), removal: .slide)*/
                        )
                }
                else {
                    Image("yukina_cat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 40)
                        .padding(50)
                        .hidden()
                }
           }
           .animation(.easeInOut(duration: 2))
           .onAppear {
            self.show = true
           }
        }
        .navigationBarTitle("動畫測試")
    }
        
       
}

struct AnimationDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDemo()
    }
}
