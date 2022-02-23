import Foundation

func readString() -> String { readLine()! }
func readInt() -> Int { Int(readLine()!)! }
func readIntArray() -> [Int] { readLine()!.split(separator: " ").map { Int($0)! } }
func readLinesToStringArray(count: Int) -> [String] {
    var arr: [String] = []
    for _ in 0 ..< count {
        arr.append(readLine()!)
    }
    return arr
}
func readLinesTo2dArray(count: Int) -> [[Int]] {
    var arr: [[Int]] = .init()
    for _ in 0 ..< count {
        arr.append(readIntArray())
    }
    return arr
}
extension Bool {
    var yesOrNo: String { self ? "Yes" : "No" }
}

extension String {
    subscript(index: Int) -> Character {
        get {
            self[self.index(startIndex, offsetBy: index)]
        }
    }
    
    func match(pattern: String) -> [NSTextCheckingResult] {
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.matches(in: self, options: [], range: .init(location: 0, length: self.count))
    }
    
    func replace(pattern: String, replacement: String) -> String {
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.stringByReplacingMatches(in: self, options: [], range: .init(location: 0, length: self.count), withTemplate: replacement)
        
    }
}

extension Array {
    func exist(index i: Int) -> Bool {
        self.indices.contains(i)
    }
    
    subscript(index: Int, or orValue: Element) -> Element {
        self.exist(index: index) ? self[index] : orValue
    }
    
    subscript(orNil index: Int) -> Element? {
        self.exist(index: index) ? self[index] : nil
    }
    
    var tuple: (Element, Element) {
        (self[0], self[1])
    }
    var triple: (Element, Element, Element) {
        (self[0], self[1], self[2])
    }
}

func f() {
    
}

f()

