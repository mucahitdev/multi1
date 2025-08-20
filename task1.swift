import Foundation

// MARK: TASK 1
let name: String = "Mücahit"
let age: Int = 28
let height: Double = 1.78
let isStudent: Bool = false


var nickname: String? = "mucahit"
var phoneNumber: String? = nil

if let nickname = nickname {
    print("Takma adım: \(nickname)")
} else {
    print("Takma adım yok.")
}

let safePhone = phoneNumber ?? "Telefon numarası girilmemiş"
print(safePhone)

print("Ad: \(name), Yaş: \(age), Boy: \(height)m, Öğrenci mi? \(isStudent)")


// MARK: TASK 2

enum Operation {
    case add
    case subtract
    case multiply
    case divide
}

func calculator(_ a: Double, _ b: Double, using operation: Operation) -> Double? {
    switch operation {
    case .add:
        return a + b
    case .subtract:
        return a - b
    case .multiply:
        return a * b
    case .divide:
        return b != 0 ? a / b : nil
    }
}

print("Add: \(calculator(10, 5, using: .add) ?? 0)")
print("Divide: \(calculator(10, 0, using: .divide) ?? 0)")

// MARK: TASK 2.1

let numbers = [3, 7, 2, 9, 1, 6, 4]

let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("Even numbers: \(evenNumbers)")

let sortedNumbers = numbers.sorted { $0 < $1 }
print("Sorted numbers: \(sortedNumbers)")
