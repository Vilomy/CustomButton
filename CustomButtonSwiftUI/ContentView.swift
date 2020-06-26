//
//  ContentView.swift
//  CustomButtonSwiftUI
//
//  Created by Gleb Zadonskiy on 26.06.2020.
//  Copyright © 2020 Gleb Zadonskiy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            SpecialButton(buttonText: "Function 1", buttonColor: Color.blue).onTapGesture {
                print("Function 1")
            }
            
            Button(action: {
                print("Function 2")}, label: {
                    SpecialButton(buttonText: "Function 2", buttonColor: Color.red)
            })
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
