//
//  TabType.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/24.
//

import Foundation

enum TabType: Int, CaseIterable {
    case home
    case menu

    var title: String {
        switch self {
        case .home:
            return "HOME"

        case .menu:
            return "MENU"
        }
    }

    var iconName: String {
        switch self {
        case .home:
            return "house"

        case .menu:
            return "menucard"
        }
    }
}
