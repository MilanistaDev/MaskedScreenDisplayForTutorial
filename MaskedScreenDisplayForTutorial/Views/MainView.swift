//
//  MainView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: TabType = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .iconTabItem(tabType: .home)
                .tag(TabType.home)

            MenuView()
                .iconTabItem(tabType: .menu)
                .tag(TabType.menu)
        }
    }
}

private extension View {
    func iconTabItem(tabType: TabType) -> some View {
        tabItem {
            Label {
                Text(tabType.title)
            } icon: {
                Image(systemName: tabType.iconName)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
