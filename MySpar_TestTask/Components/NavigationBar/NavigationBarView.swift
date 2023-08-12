//
//  NavigationBarView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

struct NavigationBarView: View {
    
    @StateObject private var viewModel: NavigationBarViewModel
    @State private var showAlert = false
    
    init(title: String) {
        self._viewModel = StateObject(wrappedValue: NavigationBarViewModel(title: title))
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                Text(viewModel.title)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                
                Button {
                    showAlert = true
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(Color.defaultGreenColor)
                        .imageScale(.large)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Нажатие данной кнопки не реализовано!"),
                        dismissButton: .default(Text("Закрыть"))
                    )
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(title: "Корзина")
    }
}
