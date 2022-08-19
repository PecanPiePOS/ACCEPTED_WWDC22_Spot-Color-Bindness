//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//

import Foundation
import SwiftUI

struct InTheEyes: View {
    
    @State var ToNext = false
    @EnvironmentObject var ColorToggles: Toggles

    var body: some View {
        if ToNext {
            Milestone()
        } else {
            VStack{
                Spacer()
                Text("What's happening in their Eyes?")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()

                VStack(alignment: .center){
                    Text("There are Cone Cells in the eyes.")
                        .font(.title2)
                        .fontWeight(.regular)
                    
                    Text("They have Photoreceptors which are able to capture each wavelength of")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                    
                    Text("Red, Blue, and Green")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("If any one of Cone Cells has a malfunction, we can't see the colors correctly.")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
                .multilineTextAlignment(.center)
                .padding()
                
                if ColorToggles.RedToggle && ColorToggles.BlueToggle && ColorToggles.GreenToggle {
                    Text("\" Normal \"")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .italic()
                        .padding(.top, 15)
                    Text("Normal People can see any colors.")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.top, -25)
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width, height: 120)

                } else if !ColorToggles.RedToggle && ColorToggles.BlueToggle && ColorToggles.GreenToggle {
                    Text("\" Protanopia \"")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .italic()
                        .padding(.top, 15)
                    Text("People with Protanopia have no red cones. They are unable to tell the difference between red and green at all.")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.top, -25)
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width, height: 120)

                } else if ColorToggles.RedToggle && !ColorToggles.BlueToggle && ColorToggles.GreenToggle {
                    Text("\" Tritanopia \"")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .italic()
                        .padding(.top, 15)
                    Text("People with Tritanopia have no blue cones. They are unable to tell the difference between blue and green, purple and red, and yellow and pink.")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.top, -25)
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width, height: 120)

                } else if ColorToggles.RedToggle && ColorToggles.BlueToggle && !ColorToggles.GreenToggle {
                    Text("\" Deuteranopia \"")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .italic()
                        .padding(.top, 15)
                    Text("People with Deuteranopia have no red cones. They are unable to tell the difference between red and green at all.")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.top, -20)
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width, height: 120)

                } else {
                    Text("\" Achromatopsia \"")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .italic()
                        .padding(.top, 15)
                        .multilineTextAlignment(.center)
                    Text("People with Achomatopsia can't see any Colors. If more one Cone Cell is lost, it's Achromatopsia.")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.top, -20)
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width, height: 120)
                }
                
                Spacer().frame(height: 2)
                
                HStack{
                    
                    VStack(alignment: .center){
                        Spacer()
                        Text("Toggle the Cone Cells,\nLearn each type.")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .frame(width: 250, height: 80)
                            .multilineTextAlignment(.center)
                        
                        RedCone()
                            .padding(.all, -15)
                        BlueCone()
                            .padding(.all, -15)
                        GreenCone()
                            .padding(.all, -15)
                        Spacer()
                    }
                    .padding()
                    .padding(.horizontal, 30)
                                        
                    VStack{
                        Text("Colors that Eyes Can Capture")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .frame(width: 250, height: 60)
//                            .padding()
                            .padding(.bottom, 20)
                            .multilineTextAlignment(.center)
                        
                        HStack{
                            Rectangle()
                                .frame(height: 250)
                                .foregroundColor(.red)
                                .opacity(ColorToggles.RedToggle ? 0.9 : 0.1)
                            Rectangle()
                                .frame(height: 250)
                                .foregroundColor(.blue)
                                .opacity(ColorToggles.BlueToggle ? 0.9 : 0.1)
                            Rectangle()
                                .frame(height: 250)
                                .foregroundColor(.green)
                                .opacity(ColorToggles.GreenToggle ? 0.9 : 0.1)

                        }
                        .padding()
                        .padding(.horizontal, 30)
                    }
                    .padding()
                    
                    
                }
                .padding()

                Image(systemName: "arrowtriangle.forward.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                    .padding(.top, -30)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)) {
                            ToNext.toggle()
                        }
                    }
                Spacer()
            }
            .padding()
        }
    }
}

struct RedCone: View {
    @EnvironmentObject var RedToggle: Toggles

    var body: some View{
        
        HStack {
            ZStack{
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15)
                    .foregroundColor(RedToggle.RedToggle ? .red : .black)
                    .padding()
                
                Image("ConeCellWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                
            }
            .padding()
            
            Spacer()
                .frame(width: 80)
            
            Button {
                withAnimation(.easeInOut(duration: 0.6)){
                    RedToggle.RedToggle.toggle()
                }
            } label: {
                Image(systemName: RedToggle.RedToggle ? "circle.circle.fill" : "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(RedToggle.RedToggle ? .red : .gray)
            }
            .padding()
        }
    }
}


struct BlueCone: View {
    @EnvironmentObject var BlueToggle: Toggles

    var body: some View{
        
        HStack {
            ZStack{
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15)
                    .foregroundColor(BlueToggle.BlueToggle ? .blue : .black)
                    .padding()
                
                Image("ConeCellWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                
            }
            .padding()
            
            Spacer()
                .frame(width: 80)

            Button {
                withAnimation(.easeInOut(duration: 0.6)){
                    BlueToggle.BlueToggle.toggle()
                }
            } label: {
                Image(systemName: BlueToggle.BlueToggle ? "circle.circle.fill" : "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(BlueToggle.BlueToggle ? .blue : .gray)
            }
            .padding()
        }
    }
}

struct GreenCone: View {
    @EnvironmentObject var GreenToggle: Toggles

    var body: some View{
        
        HStack {
            ZStack{
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15)
                    .foregroundColor(GreenToggle.GreenToggle ? .green : .black)
                    .padding()
                
                Image("ConeCellWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                
            }
            .padding()
            
            Spacer()
                .frame(width: 80)
            Button {
                withAnimation(.easeInOut(duration: 0.6)){
                    GreenToggle.GreenToggle.toggle()
                }
            } label: {
                Image(systemName: GreenToggle.GreenToggle ? "circle.circle.fill" : "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(GreenToggle.GreenToggle ? .green : .gray)
            }
            .padding()
        }
    }
}

class Toggles: ObservableObject {
    @Published var RedToggle: Bool = true
    @Published var BlueToggle: Bool = true
    @Published var GreenToggle: Bool = true
}

struct InTheEyes_Previews: PreviewProvider {
    static var previews: some View {
        InTheEyes()
            .environmentObject(Toggles())
            .preferredColorScheme(.dark)
    }
}
