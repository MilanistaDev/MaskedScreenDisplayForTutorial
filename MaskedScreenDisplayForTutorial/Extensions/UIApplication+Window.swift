//
//  UIApplication+Window.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/31.
//

import UIKit

extension UIApplication {
    /// KeyWindow 取得
    private var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .windows
            .filter { $0.isKeyWindow }
            .first
    }

    /// KeyWindow の rootViewControllerを取得
    private var rootViewController: UIViewController? {
        return keyWindow?.rootViewController
    }

    // 最前面のViewControllerを取得
    func frontMostViewController() -> UIViewController? {
        guard let rootViewController = rootViewController else {
            return nil
        }

        var frontMostViewController = rootViewController

        // ループして最前面の画面を探して返却
        while let presentedViewController = frontMostViewController.presentedViewController {
            frontMostViewController = presentedViewController
        }

        return frontMostViewController
    }

    /// 画面の横幅を取得
    /// - Returns: 画面の横幅
    func screenWidth() -> CGFloat {
        guard let rootViewController = rootViewController else {
            return .zero
        }
        return rootViewController.view.frame.width
    }

    /// 画面の縦幅を取得
    /// - Returns: 画面の縦幅
    func screenHeight() -> CGFloat {
        guard let rootViewController = rootViewController else {
            return .zero
        }
        return rootViewController.view.frame.height
    }

    /// 上部のSafeAreaの高さを取得
    /// - Returns: 上部のSafeAreaの高さ
    func safeAreaTopHeight() -> CGFloat {
        guard let keyWindow = keyWindow else {
            return .zero
        }
        return keyWindow.safeAreaInsets.top
    }


    /// 下部のSafeAreaの高さを取得
    /// - Returns: 下部のSafeAreaの高さ
    func safeAreaBottomHeight() -> CGFloat {
        guard let keyWindow = keyWindow else {
            return .zero
        }
        return keyWindow.safeAreaInsets.bottom
    }
}
