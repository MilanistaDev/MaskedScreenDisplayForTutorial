//
//  MaskedCircleView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/06/01.
//

import SwiftUI

struct MaskedCircleView: View {
    private let padding = 20.0
    private let buttonRadius = 24.0
    private let tabBarHeight = 49.0

    var body: some View {
        Circle()
            .frame(width: 64, height: 64)
            .position(
                x: xPosition(),
                y: yPosition())
            .background(Color.white)
            .compositingGroup()
            .luminanceToAlpha()
    }
}

extension MaskedCircleView {
    private func xPosition() -> CGFloat {
        // 画面幅 - 画面右端とボタンまでのパディング - ボタンの半径
        UIApplication.shared.screenWidth() - padding - buttonRadius
    }

    private func yPosition() -> CGFloat {
        // 画面の高さ - Safe Area下部の高さ - タブバーの高さ - タブバーとボタンまでのパディング - ボタンの半径
        UIApplication.shared.screenHeight() -
        UIApplication.shared.safeAreaBottomHeight() -
        tabBarHeight -
        padding -
        buttonRadius
    }
}

struct MaskedCircleView_Previews: PreviewProvider {
    static var previews: some View {
        MaskedCircleView()
    }
}
