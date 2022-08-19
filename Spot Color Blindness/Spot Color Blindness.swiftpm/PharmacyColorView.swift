//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//

import SwiftUI

struct ExitColorView: View {
        
    var body: some View {
        VStack(spacing: 120) {
            Spacer()
            
            EyeTextFieldBox()
            
            Spacer()
            
        }
        .padding()
    }
}



struct EyeTextFieldBox: View {
    
    @State var text: String = "Normal"
    @State var ToNext = false
    
    var body: some View {
        
        if ToNext {
            InTheEyes()
        } else {
            VStack(spacing:5) {
                
                if text == "Deuteranomaly" {
                    Image("Deuteranomaly")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else if text == "Deuteranopia" {
                    Image("Deuteranopia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else if text == "Protanomaly" {
                    Image("Protanomaly")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else if text == "Protanopia" {
                    Image("Protanopia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else if text == "Tritanomaly" {
                    Image("Tritanomaly")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else if text == "Tritanopia" {
                    Image("Tritanopia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                } else {
                    Image("Normal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
                }
                
                Text("This is how Color-Blind people see the Pharmacy sign.\n Put a Type of Color-Blindness.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20, weight: .light))
                    .frame(height: 80)
                    .foregroundColor(Color.gray)
                    .padding()
                
                TextField("Write a Type of Color Blindness", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 20,weight: .heavy))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.orange)
                    .frame(width: UIScreen.main.bounds.width/3)
                    .deleteDisabled(true)
                
                Spacer().frame(height:50)
                
                Image(systemName: "arrow.up.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
                    .opacity(0.4)
                    .padding(.bottom, -20)
                
                HStack(alignment:.center, spacing: 1){
                    
                    Text("Protanopia\nProtanomaly\nDeuteranopia\nDeuteranomaly\nTritanopia\nTritanomaly")
                        .font(.title2)
                        .bold()
                        .frame(width: 250, height: 200)
                        .padding()
                    
                    Text("Red-Blind\nRed-Weak\nGreen-Blind\nGreen-Weak\nBlue-Blind\nBlue-Weak")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .bold()
                        .frame(width: 250, height: 200)
                        .padding()
                }
                
                Spacer()
                
                Image(systemName: "arrowtriangle.forward.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                    .padding(.top, -5)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1)) {
                            ToNext.toggle()
                        }
                    }
            }
            .padding()
        }
    }
}

struct PharmacyColorView_Previews: PreviewProvider {
    static var previews: some View {
        ExitColorView()
    }
}


