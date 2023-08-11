//
//  BasketView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

struct BasketView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Ваша корзина пуста.\nДобавьте товары из каталога,\nчтобы сделать заказ!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black.opacity(0.7))
                
                Button {
                    // TODO: - Action
                    showAlert = true
                } label: {
                    VStack {
                        Text("Перейти в каталог")
                            .font(.title3)
                    }
                    .frame(width: Metric.widthButton, height: Metric.heightButton)
                    .foregroundColor(.white)
                    .background(Color.defaultGreenColor)
                    .cornerRadius(Metric.heightButton / 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: Metric.heightButton / 2)
                            .stroke(Color.defaultGreenColor, lineWidth: 0)
                    )
                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                }
            }
            .navigationTitle("Корзина")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(Color.defaultGreenColor)
                        .imageScale(.large)
                        .onTapGesture {
                            // TODO: - Action
                            showAlert = true
                        }
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Нажатие данной кнопки не реализовано!"),
                    dismissButton: .default(Text("Закрыть"))
                )
            }
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}

extension BasketView {
    
    // MARK: - Size Button
    enum Metric {
        static let widthButton: CGFloat = UIScreen.main.bounds.size.width * 0.8
        static let heightButton: CGFloat = UIScreen.main.bounds.size.width * 0.1
    }
}
