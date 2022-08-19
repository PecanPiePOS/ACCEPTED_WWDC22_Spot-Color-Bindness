//
//  File.swift
//  Spot Color Blindness
//
//  Created by KYUBO A. SHIM on 2022/04/24.
//
import SwiftUI
import Foundation

extension Color{
    init(hex: String){
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
    
    static let ProtanopiaSeeRed = Color(hex: "#8F7D1D")
    static let ProtanopiaSeeGreen = Color(hex: "#BDA812")
    static let ProtanopiaSeeBlue = Color(hex: "#004B99")
    static let ProtanomalySeeRed = Color(hex: "#BA5814")
    static let ProtanomalySeeGreen = Color(hex: "#9BE769")
    static let ProtanomalySeeBlue = Color(hex: "#1832C7")
    static let DeuteranopiaSeeRed = Color(hex: "#A27800")
    static let DeuteranopiaSeeGreen = Color(hex: "#D29E32")
    static let DeuteranopiaSeeBlue = Color(hex: "#015083")
    static let DeuteranonomalySeeRed = Color(hex: "#C45400")
    static let DeuteranonomalySeeGreen = Color(hex: "#A0E378")
    static let DeuteranonomalySeeBlue = Color(hex: "#2239BD")
    static let TritanopiaSeeRed = Color(hex: "#FE1800")
    static let TritanopiaSeeGreen = Color(hex: "#58B4C2")
    static let TritanopiaSeeBlue = Color(hex: "#00565A")
    static let TritanomalySeeRed = Color(hex: "#FE2600")
    static let TritanomalySeeGreen = Color(hex: "#4BF5C1")
    static let TritanomalySeeBlue = Color(hex: "#063796")

}
