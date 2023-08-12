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
    
    init(title: String?, isSearchable: Bool?) {
        self._viewModel = StateObject(wrappedValue: NavigationBarViewModel(title: title, isSearchable: isSearchable))
    }
    
    var body: some View {
        VStack {
            if let title = viewModel.title {
                ZStack(alignment: .trailing) {
                    Text(title)
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
                }
                .padding(.horizontal)
                
            } else if viewModel.isSearchable != nil {
                HStack(spacing: 10) {
                    HStack {
                        Image("img_12")
                            .resizable()
                            .frame(width: 18, height: 18)
                        
                        Text("Москва, Москва и Московская область")
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                    
                    Button {
                        showAlert = true
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Color.defaultGreenColor)
                            .imageScale(.large)
                    }
                }
                .padding(.horizontal)
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
                .edgesIgnoringSafeArea(.top)
                .padding(.top, 5)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Нажатие данной кнопки не реализовано!"),
                dismissButton: .default(Text("Закрыть"))
            )
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(title: nil, isSearchable: true)
    }
}
