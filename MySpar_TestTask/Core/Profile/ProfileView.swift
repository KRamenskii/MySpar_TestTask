//
//  ProfileView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showAlert = false
    @Binding var isPresented: Bool
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isPresented = false
                    selectedTab = 0
                } label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            
            Text("Войдите или зарегистрируйтесь")
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
            VStack(spacing: 15) {
                Button {
                    showAlert = true
                } label: {
                    VStack {
                        Text("Войти")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: Metric.heightButton)
                    .foregroundColor(.defaultGreenColor)
                    .background(.white)
                    .cornerRadius(Metric.heightButton / 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: Metric.heightButton / 2)
                            .stroke(Color.defaultGreenColor, lineWidth: 2)
                    )
                }
                
                Button {
                    showAlert = true
                } label: {
                    VStack {
                        Text("Зарегистрироваться")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: Metric.heightButton)
                    .foregroundColor(.white)
                    .background(Color.defaultGreenColor)
                    .cornerRadius(Metric.heightButton / 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: Metric.heightButton / 2)
                            .stroke(Color.defaultGreenColor, lineWidth: 2)
                    )
                }
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Нажатие данной кнопки не реализовано!"),
                dismissButton: .default(Text("Закрыть"))
            )
        }
    }
}

extension ProfileView {
    
    // MARK: - Size Button
    enum Metric {
        static let heightButton: CGFloat = UIScreen.main.bounds.size.width * 0.12
    }
}
