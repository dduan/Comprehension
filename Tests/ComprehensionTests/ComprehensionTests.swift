import Comprehension
import XCTest

class ComprehensionTests: XCTestCase {
    func testMixedTypedComprehension() {
        let numbers = [1, 2, 3]
        let letters = "abcd"
        let letterEven = Array(letters, numbers, where: { $1 % 2 == 0 }) { "\($0)\($1)" }
        XCTAssertEqual(["a2", "b2", "c2", "d2"], letterEven)
    }

    func testOneDimentionalComprehension() {
        XCTAssertEqual(Array([1, 2, 3]) { $0 + 1 }, [2, 3, 4])
        XCTAssertEqual(Array([1, 2, 3], where: { $0 % 2 == 0 }) { $0 + 1 }, [3])
    }

    func testTwoDimentionalComprehension() {
        XCTAssertEqual(
            Array([1, 2, 3], [100, 200, 300]) { $0 + $1 },
            [101, 201, 301, 102, 202, 302, 103, 203, 303]
        )

        let s0 = [1, 2, 3]
        let s1 = [10, 20, 30]
        XCTAssertEqual([Int](s0, s1, where: { $0 < 2 && ($1 / 10) % 2 == 0 }) { $0 + $1 }, [21])
    }

    func testThreeDimentionalComprehension() {
        XCTAssertEqual(
            Array([1, 2], [30, 40], [500, 600]) { $0 + $1 + $2 },
            [531, 631, 541, 641, 532, 632, 542, 642]
        )

        let s0 = [1, 2]
        let s1 = [30, 40]
        let s2 = [500, 600]
        XCTAssertEqual(
            [Int](s0, s1, s2, where: { $0 < 2 && ($2 / 100) % 2 == 0 }) { $0 + $1 + $2 },
            [631, 641]
        )
    }

    func testFourDimentionalComprehension() {
        XCTAssertEqual(
            Array([1, 2], [30, 40], [500, 600], [7000]) { $0 + $1 + $2 + $3 },
            [7531, 7631, 7541, 7641, 7532, 7632, 7542, 7642]
        )

        let s0 = [1, 2]
        let s1 = [30]
        let s2 = [500]
        let s3 = [7000, 8000]
        XCTAssertEqual(
            [Int](s0, s1, s2, s3, where: { $3 > 7000 }) { $0 + $1 + $2 + $3 },
            [8531, 8532]
        )
    }

    func testFiveDimentionalComprehension() {
        let sum: (Int, Int, Int, Int, Int) -> Int = { $0 + $1 + $2 + $3 + $4 }
        XCTAssertEqual(
            Array([1, 2], [30], [500], [7000], [80000], transform: sum),
            [87531, 87532]
        )

        let s0 = [1, 2]
        let s1 = [30]
        let s2 = [400]
        let s3 = [5000]
        let s4 = [60000, 70000]
        let filter: (Int, Int, Int, Int, Int) -> Bool  = { $4 < 70000 }
        XCTAssertEqual(
            [Int](s0, s1, s2, s3, s4, where: filter) { $0 + $1 + $2 + $3 + $4 },
            [65431, 65432]
        )
    }

    static var allTests = [
        ("testMixedTypedComprehension", testMixedTypedComprehension),
        ("testOneDimentionalComprehension", testOneDimentionalComprehension),
        ("testTwoDimentionalComprehension", testTwoDimentionalComprehension),
        ("testThreeDimentionalComprehension", testThreeDimentionalComprehension),
        ("testFourDimentionalComprehension", testFourDimentionalComprehension),
        ("testFiveDimentionalComprehension", testFiveDimentionalComprehension),
    ]
}
