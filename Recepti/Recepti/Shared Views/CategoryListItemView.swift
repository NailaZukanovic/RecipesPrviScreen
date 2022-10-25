//
//  CategoryListItemView.swift
//  Recepti
//
//  Created by MacLab6 on 24.10.22..
//

import SwiftUI

struct CategoryListItemView: View {
    var category: Category
    var body: some View {
        HStack(spacing:20){
            AsyncImage(
                url: URL(string: category.strCategoryThumb)
            ){image in
                image.resizable().scaledToFit()
            }placeholder: {
                ProgressView()
            }.frame(width: 80,height: 80,alignment: .center)
            VStack(alignment:.leading){
                Text(category.strCategory).font(.title).fontWeight(.bold)
                Text(category.strCategoryDescription).font(.caption).fontWeight(.light).lineLimit(3)
            }
        }.padding()
        
    }
}

struct CategoryListItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListItemView(category: Category.example)
    }
}
