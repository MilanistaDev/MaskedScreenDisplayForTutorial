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
    @State private var isPresented = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    gridView()
                }

                FloatingActionButton {
                    addDummyContent()
                }
            }
            .navigationTitle("Home")
        }
        .onAppear {
            setContents()
            displayTransparentBlackScreen()
        }
        .presentWithOverFullScreen(isPresented: $isPresented) {
            Color.black
                .opacity(0.5)
                .ignoresSafeArea()
                .onTapGesture {
                    // 画面タップで元の画面表示
                    dismissScreen(isAnimated: false)
                }
        }
    }
}

extension HomeView {
    /// グリッド形式のリスト
    private func gridView() -> some View {
        LazyVGrid(columns: columns, spacing: 12.0) {
            ForEach(0..<contents.count, id: \.self) { index in
                HomeContentRow(content: contents[index])
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

    /// タップでダミーコンテンツ追加
    private func addDummyContent() {
        contents.append(dummyContent)
    }

    /// 透過した黒い画面を表示
    private func displayTransparentBlackScreen() {
        // 1秒後に透過した黒い画面を表示
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            isPresented = true
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
