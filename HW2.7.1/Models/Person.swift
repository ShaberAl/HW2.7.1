//
//  Person.swift
//  HW2.7.1
//
//  Created by MacOS on 14.04.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        let deletedValue = DataManager()
        var listOfPersons = [Person]()
        
        while !deletedValue.names.isEmpty {
            listOfPersons.insert(Person(name: deletedValue.names.remove(at: Int.random(in: 0...deletedValue.names.count - 1)),
                                        surname: deletedValue.surnames.remove(at: Int.random(in: 0...deletedValue.surnames.count - 1)),
                                        phoneNumber: deletedValue.phoneNumbers.remove(at: Int.random(in: 0...deletedValue.phoneNumbers.count - 1)),
                                        email: deletedValue.emails.remove(at: Int.random(in: 0...deletedValue.emails.count - 1))), at: 0)
        }
        
        return listOfPersons
    }
}
