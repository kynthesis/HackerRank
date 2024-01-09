func pangrams(s: String) -> String {
    return Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ") == Set(s.uppercased().filter { $0 != " " }) ? "pangram" : "not pangram"
}
