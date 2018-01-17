import Foundation



extension Sequence where Element: Hashable {
    public var frequencies: [Element:Int] {
        let frequencyPairs = self.map {($0,1)}
        return Dictionary (frequencyPairs, uniquingKeysWith: +)
    }
}

extension Sequence {
    public func all(matching predicate:(Element) -> Bool) -> Bool {
        //every element matches a predicate if no element doesn't match it:
        return !contains{!predicate($0)}
    }
}
