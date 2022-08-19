//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//

import Foundation
import SwiftUI

struct TrafficView: View {

    @State var ToNext = false

    var body: some View {
            ColorTraffic()
    }
}

struct ColorTraffic: View {
    
    @State var NewView = false
    @State var ToBack = false
    @State var normal = true
    @State var pmaly = false
    @State var tmaly = false
    @State var dmaly = false
    @State var dnopia = false
    @State var tnopia = false
    @State var pnopia = false
    
    var body: some View {
        
        if NewView && ToBack {
            Milestone()
        } else {
            ZStack{
                Color.white
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    HStack{
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = true
                                pmaly = false
                                tmaly = false
                                dmaly = false
                                dnopia = false
                                tnopia = false
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: normal ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Normal")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = false
                                tmaly = false
                                dmaly = false
                                dnopia = false
                                tnopia = false
                                pnopia = true
                            }
                        } label: {
                            VStack{
                                Image(systemName: pnopia ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Protanopia")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = false
                                tmaly = false
                                dmaly = false
                                dnopia = true
                                tnopia = false
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: dnopia ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Deuteranopia")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = true
                                tmaly = false
                                dmaly = false
                                dnopia = false
                                tnopia = false
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: pmaly ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Protanomaly")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = false
                                tmaly = false
                                dmaly = true
                                dnopia = false
                                tnopia = false
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: dmaly ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Deuteranomaly")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = false
                                tmaly = false
                                dmaly = false
                                dnopia = false
                                tnopia = true
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: tnopia ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Tritanopia")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Button {
                            withAnimation(.easeOut(duration: 0.5)){
                                normal = false
                                pmaly = false
                                tmaly = true
                                dmaly = false
                                dnopia = false
                                tnopia = false
                                pnopia = false
                            }
                        } label: {
                            VStack{
                                Image(systemName: tmaly ? "circle.circle.fill" : "circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.black)
                                Text("Tritanomaly")
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                            .padding()
                        }
                        
                        Spacer()
                            
                    }
                    
                    if pmaly {
                        Image("pmalyTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else if tmaly {
                        Image("tmalyTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else if dmaly {
                        Image("dmalyTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else if dnopia {
                        Image("dnopiaTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else if tnopia {
                        Image("tnopiaTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else if pnopia {
                        Image("pnopiaTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    } else {
                        Image("normalTraffic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.6)){
                            ToBack.toggle()
                            NewView.toggle()
                        }
                    } label: {
                        Image(systemName: "arrowtriangle.backward.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    Spacer()
                }
            }
        }
    }
}

struct CaseTrafficView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficView()
    }
}
