//
//  ListModel.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation
import SwiftUI

class ListViewModel: ObservableObject {
    @Published var categories: [String] = Array()
    
    init() {
        let url: String = "https://api.chucknorris.io/jokes/categories"
        HTTPService().fetch(url: url) { (result: [String]?) in
            if result != nil {
                self.categories = result!
            }
        }
    }
}
