//
//  ContentView.swift
//  Recepti
//
//  Created by MacLab6 on 22.10.22..
//

import SwiftUI

struct ContentView: View {
    @StateObject var wm = CategoriesViewModel()
    @State var searchText = ""
    var filteredCategories:[Category]{
        if(searchText.isEmpty){
            return wm.categories
        }
        else
        {
            return wm.categories.filter{
                $0.strCategory.contains(searchText) || $0.strCategoryDescription.contains(searchText)
            }
        }
    }
    var body: some View {
        NavigationView {
            List{
                ForEach(
                    filteredCategories, id: \.self.idCategory
                ){ category in
                    NavigationLink(destination: RecepiesView()){
                        CategoryListItemView(category: category)
                    }
                }
            
            }.navigationTitle("Recepies Categories")
                .searchable(text: $searchText)
                
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
