//
//  NavigationBarViewModel.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import Foundation

final class NavigationBarViewModel: ObservableObject {
    
    @Published var title: String?
    @Published var isSearchable: Bool?
    
    init(title: String?, isSearchable: Bool?) {
        self.title = title
        self.isSearchable = isSearchable
    }
}
