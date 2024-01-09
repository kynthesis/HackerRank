func marsExploration(s: String) -> Int {
    return zip(String(repeating: "SOS", count: s.count / 3), s).map(==).filter { $0 == false }.count
}
