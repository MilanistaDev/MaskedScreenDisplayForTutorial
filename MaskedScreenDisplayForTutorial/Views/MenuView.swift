//
//  MenuView.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
