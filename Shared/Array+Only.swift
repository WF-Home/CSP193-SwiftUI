//
//  Array+Only.swift
//  card-matching-game
//
//  Created by Wiljay Flores on 2021-03-20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
