//
//  HomeContentRow.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/30.
//

import SwiftUI

struct HomeContentRow: View {
    let content: ContentItem

    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Color(UIColor.tertiarySystemBackground)
                .aspectRatio(1.2, contentMode: .fill)
                .overlay(
                    Image(content.image)
                        .resizable()
                        .scaledToFill()
                )
                .offset(x: .zero, y: -2.0)
                .padding(.bottom, 8.0)

            Group {
                Text(content.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.bottom, 8.0)
                Text(content.description)
                    .font(.footnote)
                    .lineLimit(3)
                    .padding(.bottom, 16.0)
            }
            .padding(.horizontal, 8.0)
        }
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(8.0)
        .shadow(color: .black.opacity(0.3), radius: 5.0, x: .zero, y: .zero)
    }
}

struct StationNewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentRow(content: sampleContents[0])
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
