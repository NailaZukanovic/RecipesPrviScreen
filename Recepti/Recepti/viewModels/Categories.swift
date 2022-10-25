//
//  Categories.swift
//  Recepti
//
//  Created by MacLab6 on 24.10.22..
//

import Foundation

class CategoriesViewModel: ObservableObject{
    @Published var categories: [Category] = []
    
    private let dataService = RecepiesData.instance
    
    init(){
        addSubcriber()
    }
    
    private func addSubcriber(){
        dataService.$categories.sink { [weak self]categories in
            self?.categories = categories
        }
    }
}
