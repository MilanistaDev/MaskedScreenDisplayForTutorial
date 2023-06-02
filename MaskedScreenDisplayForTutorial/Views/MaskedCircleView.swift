//
//  MaskedCircleView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/06/01.
//

import SwiftUI

struct MaskedCircleView: View {
    var body: some View {
        Circle()
            .frame(width: 64, height: 64)
            .position(
                x: UIApplication.shared.screenWidth() - 44,
                y: UIApplication.shared.screenHeight() - 127)
            .background(Color.white)
            .compositingGroup()
            .luminanceToAlpha()
    }
}

struct MaskedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        MaskedCircleView()
    }
}
