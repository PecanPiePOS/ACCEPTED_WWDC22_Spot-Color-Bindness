
import SwiftUI

struct Introduction: View {
    var body: some View {
        IntroView()
    }
}

struct IntroView: View {
    @State var trueColor = false
    @State var ToNext = false
    var body: some View {
        if ToNext {
            Explanation()
        } else {
            VStack(spacing: 20) {
                Spacer().frame(height: 40)
                
                ColorChange(text: "SPOT", trueColor: $trueColor)
                
                ColorChange(text: "COLOR", trueColor: $trueColor)
                
                ColorChange(text: "BLIND", trueColor: $trueColor)

                ColorChange(text: "-NESS", trueColor: $trueColor)
                
                Spacer()
                
                Toggle(isOn: $trueColor, label: {
                    Text("Enable True Colors")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                })
                
                Spacer()
                
                HStack(){
                    Image(systemName: "ipad")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .opacity(0.4)

                    Text("Portrait Mode Recommended")
                        .font(.callout)
                        .fontWeight(.light)
                        .opacity(0.5)
                }
                
                Image(systemName: "arrowtriangle.forward.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.7)) {
                            ToNext.toggle()
                        }
                    }
            }
            .padding(.horizontal,100)
            .padding(.bottom,80)
        }
    }
}
    
struct ColorChange: View {
    
    let BlindColors: [Color] = [Color.ProtanopiaSeeRed, Color.ProtanopiaSeeGreen, Color.ProtanopiaSeeBlue, Color.ProtanomalySeeRed, Color.ProtanomalySeeRed, Color.ProtanomalySeeBlue, Color.DeuteranopiaSeeRed, Color.DeuteranopiaSeeGreen, Color.DeuteranopiaSeeBlue, Color.DeuteranonomalySeeRed, Color.DeuteranonomalySeeGreen, Color.DeuteranonomalySeeBlue, Color.TritanopiaSeeRed, Color.TritanopiaSeeGreen, Color.TritanopiaSeeBlue, Color.TritanomalySeeRed, Color.TritanomalySeeGreen, Color.TritanomalySeeBlue]
                             
    let trueColors: [Color] = [Color.red, Color.green, Color.blue]
    
    var text: String
    @State var animation = false
    @Binding var trueColor : Bool
    
    var body: some View {
        ZStack{
            Text(text)
                .font(.system(size: 120, weight: .heavy))
                .foregroundColor(Color.black)
                .opacity(0.2)
            
            HStack(spacing: 0) {
                
                ForEach(0..<text.count, id: \.self) {texts in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: texts)]))
                        .font(.system(size: 120, weight: .heavy))
                        .foregroundColor(ColorEffect())
                }
            }
            .mask(
                Rectangle()
                    .fill(
                        LinearGradient(gradient: .init(colors: [Color.black.opacity(0.3),Color.white,Color.white.opacity(0.3)]), startPoint: .leading, endPoint: .trailing))
                    .rotationEffect(.init(degrees: 70))
                    .frame(width: 200, height: 200)
                    .padding(30)
                    .offset(x:-250)
                    .offset(x: animation ? 500 : 0)
            )
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 2.5).repeatForever(autoreverses: true)) {
                    animation.toggle()
                }
            })
        }
    }
    
    func ColorEffect() -> Color {
        
        let randomColor = trueColor ? trueColors.randomElement() : BlindColors.randomElement()
            
        return randomColor!
    }
}



