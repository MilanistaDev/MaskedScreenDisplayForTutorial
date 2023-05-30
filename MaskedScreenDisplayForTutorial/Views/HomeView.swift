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
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }
                .padding()

                Spacer()
            }
            .navigationTitle("Home")
        }
    }
}

extension HomeView {

    private func gridView() -> some View {
        LazyVGrid(columns: columns, spacing: 12.0) {
            ForEach(, id: \.self) { news in
                StationNewsRowView(stationNewsInfo: news)
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.bottom, 20.0)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
