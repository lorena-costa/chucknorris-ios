//
//  HTTPService.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation
import SwiftUI
import Alamofire

class HTTPService {
    
    func fetch<T: Decodable>(url: String, completion: @escaping (T?) -> Void ){
        Alamofire.request(url, method: .get).responseJSON { (response) in
            switch response.result {
            case .success:
                do {
                    if response.data != nil {
                        let data = try JSONDecoder().decode(T.self, from: response.data!)
                        completion(data)
                    }
                } catch(let error) {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
