//
//  DetailModel.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation
import SwiftUI

class DetailViewModel: ObservableObject {
    @Published var detail: Detail?
    
    func fetchDetail(category: String) {
        let url: String = "https://api.chucknorris.io/jokes/random?category=" + category
        HTTPService().fetch(url: url) { (result: Detail?) in
            if result != nil {
                self.detail = result!
            }
        }
    }
}

struct Detail: Decodable {
    var icon_url: String?
    var id: String?
    var value: String?
    var url: String?
}
