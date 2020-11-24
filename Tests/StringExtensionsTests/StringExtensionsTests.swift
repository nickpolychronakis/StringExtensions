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
    
    /// Ελέγχει αν επιστρέφει μόνο η πρώτη γραμμή απο το κείμενο
    func testFirstLine_returnFirstLine() {
        let testingTest = "Hello\nWorld"
        let correctResult = "Hello"
        
        let sut = testingTest.firstLine()
        
        XCTAssertEqual(sut, correctResult)
    }
    
    func testFirstLine_onlyOneLine() {
        let testingTest = "Hello World"
        let correctResult = "Hello World"
        
        let sut = testingTest.firstLine()
        
        XCTAssertEqual(sut, correctResult)
    }
    
    func testFirstLine_noCharacters() {
        let testingTest = ""
        let correctResult = ""
        
        let sut = testingTest.firstLine()
        
        XCTAssertEqual(sut, correctResult)
    }
}
