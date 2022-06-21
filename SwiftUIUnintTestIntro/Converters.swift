//
//  Converters.swift
//  SwiftUIUnintTestIntro
//
//  Created by Kaori Persson on 2022-06-21.
//

import Foundation

class Converters {
    func convertEuroToUSD(euro: String) -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0
        
        if euroValue <= 0 {
            return "Please enter a positive number."
        }
        
        if euroValue >= 1_000_000 {
            return "Value too big to convert"
        }
        
        return "$\(String(format: "%.2f", euroValue * usdRate))"
    }
}
