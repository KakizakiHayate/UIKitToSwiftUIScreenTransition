//
//  ContentView.swift
//  UIKitToSwiftUIScreenTransition
//
//  Created by 柿崎 on 2024/05/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("Image")
                    .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .overlay {
                    Text("テスト")
                        .foregroundStyle(.white)
                        .bold()
                }
                .ignoresSafeArea()
                NavigationLink(destination: ViewControllerRepresentable()) {
                    Text("ViewController")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
