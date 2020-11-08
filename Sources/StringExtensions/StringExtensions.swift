import Foundation

public extension String {
    /// Ελέγχει αν αρχίζει το κείμενο απο ακέραιο (με κενό μετά) και τον επιστρέφει αλλιώς επιστρέφει τον μέγιστο ακέραιο.
    /// Το χρησιμοποιώ κυρίως για sort σε λίστες όταν το κείμενο ξεκινά με αριθμούς, καθώς χωρίς αυτό το sort απο προεπιλογή γίνεται έτσι [1,11,2,3,32,4] δηλαδή κάνει sort βάση του πρώτου αριθμού και όχι βάση του πραγματικού αριθμού, το οποίο εγώ σε πολλές περιπτώσεις δεν το θέλω.
    func prefixInteger() -> Int {
        let splitedString = self.components(separatedBy: " ")
        guard !splitedString.isEmpty else { return 0 }
        if let stringInteger = Int(splitedString[0]) {
            return stringInteger
        } else {
            return Int.max
        }
    }
    
    /// Ελέγχω αν ένα String περιέχει έναν αριθμό.
    var isNumberOnly: Bool {
        var localizedNumber: String = ""
        // Αν η γλώσσα της εφαρμογής είναι Ελληνικά
        if Locale.preferredLanguages[0] == "el" {
            // αντικαθιστώ το κόμμα που βάζουμε στην Ελλάδα με τελεία που υποστηρίζει το Double
            localizedNumber = self.replacingOccurrences(of: ",", with: ".")
        } else {
            localizedNumber = self
        }
        // Αν μπορεί να μετατραπεί σε Double τότε επιστρέφουμε την μετατροπή
        if Double(localizedNumber) != nil {
            return true
        } else {
            return false
        }
    }
}
