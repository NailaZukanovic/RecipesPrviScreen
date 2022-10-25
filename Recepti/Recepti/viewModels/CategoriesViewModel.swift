//
//  Categories.swift
//  Recepti
//
//  Created by MacLab6 on 24.10.22..
//

import Foundation
import Combine

class CategoriesViewModel: ObservableObject{
    @Published var categories: [Category] = []
    var categoriesCancellables = Set<AnyCancellable>()
    private let dataService = RecepiesData.instance
    
    init(){
        addSubcriber()
    }
    
    private func addSubcriber(){
        dataService.$categories.sink { [weak self]categories in
            self?.categories = categories
        }.store(in: &categoriesCancellables)
    }
}
