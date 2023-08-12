//
//  CatalogViewModel.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

final class CatalogViewModel: ObservableObject {
    
    @Published var sections: [CatalogSection] = CatalogSection.sections
    
}
