import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ejercicio2Tests.allTests),
    ]
}
#endif
