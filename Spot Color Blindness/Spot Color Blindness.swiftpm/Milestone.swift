//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//

import Foundation
import SwiftUI

struct Milestone: View {

    @State var ToNext = false
    var body: some View {
        VStack {
            Choose()
        }
    }
}

struct Choose: View {
    
    @State var ToNext1 = false
    @State var ToNext2 = false
    @State var ToNext3 = false
    @State var ToBack = false


    var body: some View {
        if ToNext1 {
            TVView()
        } else if ToNext2 {
            FoodView()
        } else if ToNext3 {
            TrafficView()
        } else if ToBack {
            Introduction()
        } else {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Spacer()

                    Text("Particular Siutations")
                        .font(.system(size: 50, weight: .black))
                        .foregroundColor(.black)
                        
                    Spacer().frame(height: 100)
                    
                    HStack {
                        
                        Spacer()
                        
                        Image("ColorBlindGhost")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4)
                            .padding()
                        
                        Spacer()
                        
                        VStack(alignment:.center, spacing: 50){
                            Image(systemName: "arrow.right.circle")
                                .resizable()
                                .scaledToFit()
                                .opacity(0.7)
                                .foregroundColor(.black)
                                .frame(width: UIScreen.main.bounds.width/20, height: UIScreen.main.bounds.width/20)
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext1.toggle()
                                    }
                                }
                            Image(systemName: "arrow.right.circle")
                                .resizable()
                                .scaledToFit()
                                .opacity(0.7)
                                .foregroundColor(.black)
                                .frame(width: UIScreen.main.bounds.width/20, height: UIScreen.main.bounds.width/20)
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext2.toggle()
                                    }
                                }
                            Image(systemName: "arrow.right.circle")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .opacity(0.7)
                                .frame(width: UIScreen.main.bounds.width/20, height: UIScreen.main.bounds.width/20)
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext3.toggle()
                                    }
                                }
                        }
                        
                        VStack(alignment:.leading, spacing: 40){
                            Text("TVs?")
                                .foregroundColor(Color.DeuteranonomalySeeBlue)
                                .font(.system(size: UIScreen.main.bounds.width/20, weight: .heavy))
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext1.toggle()
                                    }
                                }
                            Text("Foods?")
                                .foregroundColor(Color.blue)
                                .font(.system(size: UIScreen.main.bounds.width/20, weight: .heavy))
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext2.toggle()
                                    }
                                }
                            Text("Traffic Signs?")
                                .foregroundColor(Color.ProtanopiaSeeBlue)
                                .font(.system(size: UIScreen.main.bounds.width/20, weight: .heavy))
                                .opacity(0.8)
                                .padding()
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        ToNext3.toggle()
                                    }
                                }
                        }
                        
                        Spacer()

                    }
                    
                    Spacer()
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.6)){
                            ToBack.toggle()
                        }
                    } label: {
                        Image(systemName: "arrowtriangle.backward.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(.black)
                            .opacity(0.7)
                    }
                    .padding()
                    .padding(.top, 40)
                    
                    Text("Back to the Start")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .opacity(0.7)
                    
                    Spacer()

                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Milestone_Previews: PreviewProvider {
    static var previews: some View {
        Milestone()
    }
}
