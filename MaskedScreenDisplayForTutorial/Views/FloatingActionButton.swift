//
//  FloatingActionButton.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/31.
//

import SwiftUI

struct FloatingActionButton: View {
    var didTap: (() -> Void)?

    var body: some View {
        Button {
            didTap?()
        } label: {
            Image(systemName: "plus.rectangle.fill.on.rectangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24.0, height: 24.0)
                .foregroundColor(.white)
                .padding(.all, 12.0)
                .background(Color.red)
                .cornerRadius(24.0)
                .shadow(color: .black.opacity(0.3),
                        radius: 5.0,
                        x: 1.0, y: 1.0)
        }
        .padding(.trailing, 20.0)
        .padding(.bottom, 20.0)
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingActionButton()
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
