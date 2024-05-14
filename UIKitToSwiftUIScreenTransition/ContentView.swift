//
//  ContentView.swift
//  UIKitToSwiftUIScreenTransition
//
//  Created by 柿崎 on 2024/05/07.
//

import SwiftUI

struct ContentView: View {
    @State private var labelSize = CGSize()
    var body: some View {
        let userInterfaceIdiom = UIDevice.current.userInterfaceIdiom
        ZStack {
            VStack {
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .background {
                        GeometryReader { geometry in
                            Path { path in
                                let size = geometry.size
                                DispatchQueue.main.async {
                                    if self.labelSize != size {
                                        self.labelSize = size
                                    }
                                }
                            }
                            .ignoresSafeArea(.all)
                        }
                    }
                    .overlay {
                        switch userInterfaceIdiom {
                        case .phone:
                            Text("単語マスターへの最初の1歩を踏み出した！")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        case .pad:
                            Text("単語マスターへの最初の1歩を踏み出した！")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .font(.title)
                        default:
                            EmptyView()
                        }
                        Text("単語マスターへの最初の1歩を踏み出した！")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .font(userInterfaceIdiom == .phone ? nil : .title)
                    }
                    .ignoresSafeArea()
                    .padding(.bottom)
                //                NavigationLink(destination: ViewControllerRepresentable()) {
                //                    Text("ViewController")
                //                }

                VStack {
                    switch userInterfaceIdiom {
                    case .phone:
                        Image("Group1165")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            .position(x: labelSize.width / 2, y: labelSize.height * 0.6)

                    case .pad:
                        Image("ContinuousLearningCompletedDay")
                            .resizable()
                            .padding()
                            .scaledToFit()
                            .position(x: labelSize.width / 2, y: labelSize.height * 0.5)

                    default:
                        // TODO: 表示する
                        EmptyView()
                    }
                }
                Spacer()
            }
            .ignoresSafeArea(.all)

            VStack {
                Spacer()
                Button {
                } label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("シェアする")
                            .foregroundStyle(.blue)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 3)
                }
                .background(Color.white)
                .padding([.horizontal, .top])
                Button {
                } label: {
                    HStack {
                        Text("次へ")
                            .foregroundStyle(.white)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.black)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            }
            .padding(.bottom)
        } // ZStack
    }
}

#Preview {
    ContentView()
}
