//
//  ContentView.swift
//  SwiftUIUnintTestIntro
//
//  Created by Kaori Persson on 2022-06-21.
//

import SwiftUI

// unit testing
// https://youtu.be/vfCm6zCHv44
// https://www.evernote.com/client/web?login=true#?an=true&n=5dabd44f-8cf2-8b6e-95b8-055f2c6c5a00&
struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        Form {
            VStack {
                Text("\(vm.convertedText)")
                    .font(.headline)
                
                TextField("Enter a value", text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)
                
                Button("Convert", action: vm.convertMoney)
                    .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
