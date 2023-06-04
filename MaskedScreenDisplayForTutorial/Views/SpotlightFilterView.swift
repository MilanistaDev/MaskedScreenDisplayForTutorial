//
//  SpotlightFilterView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/06/04.
//

import SwiftUI

struct SpotlightFilterView: View {
    private let spotlightHeight = 64.0
    private let tabBarHeight = 49.0

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // スポットライト部分
            Color.black
                .opacity(0.5)
                .mask(MaskedCircleView())
                .ignoresSafeArea()

            // 吹き出し部分
            VStack(alignment: .trailing, spacing: .zero) {
                Text("ボタンをタップすると，リストのアイテムがひとつ追加されます。")
                    .font(.system(size: 14.0))
                    .padding(.all, 16.0)
                    .background(Color.white)
                    .cornerRadius(4.0)
                    .padding(.horizontal, 16.0)

                Image("speechBubble")
                    .frame(width: 18.0, height: 16.0)
                    .padding(.trailing, 36.0)
            }
            .offset(x: .zero, y: speechBubbleYPosition())
        }
        .onTapGesture {
            dismissScreen(isAnimated: false)
        }
    }
}

extension SpotlightFilterView {
    /// 吹き出しを表示する位置を調整
    private func speechBubbleYPosition() -> CGFloat {
        return -(tabBarHeight + spotlightHeight + 20.0)
    }
}

struct SpotlightFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SpotlightFilterView()
    }
}
