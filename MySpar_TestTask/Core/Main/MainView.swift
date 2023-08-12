//
//  MainView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            NavigationBarView(title: nil, isSearchable: true)
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
