func caesarCipher(s: String, k: Int) -> String {
    let abc = [Character]("abcdefghijklmnopqrstuvwxyz")
    let ABC = [Character]("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    return String(s.map{ $0.isLetter ? ($0.isLowercase ? abc[(abc.firstIndex(of: $0)! + k) % 26] : ABC[(ABC.firstIndex(of: $0)! + k) % 26]) : $0 })
}
