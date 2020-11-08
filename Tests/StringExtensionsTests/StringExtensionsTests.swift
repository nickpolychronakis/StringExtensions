import XCTest
@testable import StringExtensions

final class StringExtensionsTests: XCTestCase {
    /// Ελέγχει αν επιστρέφει σωστά τον ακέραιο με τον οποίο ξεκινάει το string
    func testPrefixInteger_startsWithNumber() {
        let testingNumber = "123 text".prefixInteger()
        let resultNumber = 123
        XCTAssertEqual(testingNumber, resultNumber)
    }
    
    /// Ελέγχει αν είναι όντως μόνο αριθμός μέσα στο string
    func testIsNumberOnly_isNumber() {
        let numberText = "123"
        XCTAssertEqual(true, numberText.isNumberOnly)
    }
    
    /// Ελέγχει όταν δεν είναι αριθμός μέσα στο string τι θα γίνει
    func testIsNumberOnly_isNotNumber() {
        let numberText = "123aa"
        XCTAssertEqual(false, numberText.isNumberOnly)
    }
}
