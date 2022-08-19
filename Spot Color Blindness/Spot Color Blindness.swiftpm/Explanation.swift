//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//

import Foundation
import SwiftUI

struct Explanation: View {
    var body: some View {
        ColorBlindInfo()
    }
}

struct ColorBlindInfo: View {

    @State var time = 1
    @State var ToNext = false
    
    var body: some View {
        
        if ToNext {
            ExitColorView()
        } else {
            VStack(spacing:20){
                Button {
                    time += 1
                } label: {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .foregroundColor(.red)
                        .padding()
                        .padding(.bottom, 30)
                }
                
                Text("Unknowingly, there are many color-blind people around us.")
                    .bold()
                    .opacity(time >= 1 ? 1 : 0.3)

                Text("We were just told what color blindness is.")
                    .bold()
                    .opacity(time >= 2 ? 1 : 0.3)
                    .foregroundColor(time != 2 ? .red : Color.DeuteranonomalySeeRed)

                Text("We hear simple stories \nsuch as life with no red color or no green color.")
                    .bold()
                    .opacity(time >= 3 ? 1 : 0.3)
                    .foregroundColor(time != 3 ? .blue : Color.ProtanopiaSeeBlue)

                Text("And all we can face is \nA color blindness test that we do once for fun on the Internet, \n and we have no idea what colorblind people are seeing.")
                    .bold()
                    .opacity(time >= 4 ? 1 : 0.3)
                    .foregroundColor(time != 4 ? .green : Color.DeuteranopiaSeeGreen)

                Text("So I made this app to tell their story a little more.")
                    .bold()
                    .opacity(time >= 5 ? 1 : 0.3)
                    .foregroundColor(time != 5 ? .red : Color.ProtanopiaSeeRed)

                Text("It will introduce what is happening in their eyes \n and how they see colors differently from us, \n and what they see things at particular places.")
                    .bold()
                    .opacity(time >= 6 ? 1 : 0.3)
                    .foregroundColor(time != 6 ? .blue : Color.ProtanopiaSeeBlue)
                
                Image(systemName: "arrowtriangle.forward.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .opacity(time >= 7 ? 1 : 0)
                    .padding()
                    .padding(.top, 40)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)) {
                            ToNext.toggle()
                        }
                    }
            }
            .multilineTextAlignment(.center)
            .font(.title2)
            .padding(.all, 50)
        }
    }
}
        
struct Explanation_Previews: PreviewProvider {
    static var previews: some View {
        Explanation()
            .preferredColorScheme(.dark)
    }
}
