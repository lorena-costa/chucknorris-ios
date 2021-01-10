//
//  ListView.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation
import SwiftUI

struct ListView: View {
    @ObservedObject private var model = ListViewModel()
    
    var body: some View {
        NavigationView {
            List (model.categories, id: \.self) { category in
                NavigationLink(
                    destination: DetailView(category: category)) {
                    Text(category.titleCase).padding()
                }
            }.navigationBarTitle("Categorias", displayMode: .inline)
        }.navigationBarColor(backgroundColor: UIColor(named: "AccentColor")!, tintColor: .white)
    }
}
