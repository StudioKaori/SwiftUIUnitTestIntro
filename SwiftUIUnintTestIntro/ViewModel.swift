//
//  ViewModel.swift
//  SwiftUIUnintTestIntro
//
//  Created by Kaori Persson on 2022-06-21.
//

import Foundation
import UIKit

final class ViewModel: ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    
    private let converter = Converters()
    
    func convertMoney() {
        self.convertedText = converter.convertEuroToUSD(euro: text)
        self.hideKeyBoard()
    }
    
    private func hideKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}


