//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        return word.lowercased() == word ||
            word.uppercased() == word ||
            word.isOnlyFirstCharacterCapitalized()
    }
}

extension String {
    func isOnlyFirstCharacterCapitalized() -> Bool {
        let first = String(characters.prefix(1))
        let other = String(characters.dropFirst())

        return first == first.capitalized && other.lowercased() == other
    }
}
