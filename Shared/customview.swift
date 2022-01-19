//
//  customview.swift
//  Challenge Task 1 (iOS)
//
//  Created by Mukeshkumar Balasubramani  on 19/01/22.
//

import SwiftUI

struct customview: View {
    var width: CGFloat = 150
    var height: CGFloat = 150
    var outerCircleXOffset: CGFloat = 0
    var outerCircleYOffSet: CGFloat = 0
    var xOffSet: CGFloat = 60
    var yOffSet: CGFloat = 70
    var colour: Color = .blue
    
    var body: some View {
        ZStack {
            Circle()
                .fill(colour)
                .frame(width: width, height: height)
                .offset(x: outerCircleXOffset, y: outerCircleYOffSet)
            Circle()
                .fill(Color.CTGreen)
                .frame(width: width, height: width)
                .offset(x: xOffSet, y: yOffSet)
                .clipped()
        }
        .frame(width: width, height: height)
        .cornerRadius(height/2)
    }
}

struct customview_Previews: PreviewProvider {
    static var previews: some View {
        customview()
    }
}
