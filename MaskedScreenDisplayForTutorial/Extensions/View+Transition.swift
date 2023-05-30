//
//  View+Transition.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/31.
//

import SwiftUI

extension View {
    /// overFullScreen での遷移を行う
    func presentWithOverFullScreen<Content>(isPresented: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View where Content: View {
        if isPresented.wrappedValue {
            let viewController = UIHostingController(rootView: content())
            // 遷移元のビューを見せるために背景色を透明にしておく(被せたい画面側で透過する背景色を設定)
            viewController.view.backgroundColor = .clear
            viewController.modalPresentationStyle = .overFullScreen
            // 最前面の画面に対してoverFullScreen での遷移を行う
            UIApplication.shared.frontMostViewController()?.present(viewController, animated: false)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isPresented.wrappedValue = false
            }
        }
        return self
    }

    /// 画面を閉じる
    /// - Parameter isAnimated: アニメーションの有無
    func dismissScreen(isAnimated: Bool) {
        UIApplication.shared.frontMostViewController()!.dismiss(animated: isAnimated, completion: nil)
    }

    /**
     @Environment(\.presentationMode) var presentationMode
     // iOS 14 で画面閉じられない
     presentationMode.wrappedValue.dismiss()

     FYI
     https://stackoverflow.com/questions/57190511/dismiss-a-swiftui-view-that-is-contained-in-a-uihostingcontroller
     */
}
