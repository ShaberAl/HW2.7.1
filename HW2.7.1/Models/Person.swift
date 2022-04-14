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
    static func getPersonsList() -> [Person] {
        var listOfPersons = [Person]()

        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phoneNumbers.count, emails.count) - 1
        
        for index in 0...iterationCount {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phoneNumber: phoneNumbers[index],
                                email: emails[index])
            
            listOfPersons.append(person)
        }
        
        return listOfPersons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
