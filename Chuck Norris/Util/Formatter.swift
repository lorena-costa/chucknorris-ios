//
//  Formatter.swift
//  Chuck Norris
//
//  Created by Lorena Costa on 10/01/21.
//

import Foundation

extension StringProtocol {
    var titleCase: String { return prefix(1).uppercased() + dropFirst() }
}
