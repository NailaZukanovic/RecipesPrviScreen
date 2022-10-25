//
//  Categories.swift
//  Recepti
//
//  Created by MacLab6 on 22.10.22..
//

import Foundation

struct CategoriesResponse: Codable {
    let categories: [Category]
}
struct Category: Codable {
    let idCategory, strCategory: String
    let strCategoryThumb: String
    let strCategoryDescription: String
    static let example: Category = Category(idCategory: "", strCategory: "Beef", strCategoryThumb: "https://www.themealdb.com/images/category/beef.png", strCategoryDescription: "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]")
    
    //"idCategory":"1","strCategory":"Beef","strCategoryThumb":"https:\/\/www.themealdb.com\/images\/category\/beef.png","strCategoryDescription":"Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
}
