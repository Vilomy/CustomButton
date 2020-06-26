//
//  SpecialButton.swift
//  CustomButtonSwiftUI
//
//  Created by Gleb Zadonskiy on 26.06.2020.
//  Copyright © 2020 Gleb Zadonskiy. All rights reserved.
//

import SwiftUI

struct SpecialButton: View {
    var buttonText = "My Button"
    var buttonColor = Color(.red)
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 55)
                .foregroundColor(Color.gray)
            Text(buttonText).bold()
                .foregroundColor(.black)
            
            LeftCorner()
                .trim(from: 0.4, to: 0.6)
            .fill(buttonColor)
                .frame(width: 150, height: 55)
                .foregroundColor(.black)
        }
    }
}

struct LeftCorner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 5))
        return path
    }
}

struct SpecialButton_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButton()
    }
}
