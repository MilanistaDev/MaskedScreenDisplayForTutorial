//
//  HomeView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/24.
//

import SwiftUI

struct HomeView: View {

    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    @State private var contents: [ContentItem] = []

    var body: some View {
        NavigationView {
            ScrollView {
                gridView()
            }
            .navigationTitle("Home")
        }
        .onAppear {
            setContents()
        }
    }
}

extension HomeView {
    /// グリッド形式のリスト
    private func gridView() -> some View {
        LazyVGrid(columns: columns, spacing: 12.0) {
            ForEach(contents, id: \.self) { content in
                HomeContentRow(content: content)
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 20.0)
    }
}

extension HomeView {
    /// サンプルデータをセット
    private func setContents() {
        contents = sampleContents
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
