//
//  PersonManager.swift
//  HW2.7.1
//
//  Created by MacOS on 14.04.2022.
//

class DataManager {
    static let shared = DataManager()
    
    let names = ["John", "Fred", "Rudy", "Lee", "Ash"]
    let surnames = ["Smith", "Dow", "Ipkis", "Tenebris", "O'Connel"]
    let phoneNumbers = ["8-800-555-35-35", "9-900-999-99-99", "2-200-222-22-22", "3-300-333-33-33", "5-500-555-55-55"]
    let emails = ["abs@mail.ru", "acdc@mail.ru", "hoho@mail.ru", "ko@mail.ru", "prpr@mail.ru"]
    
    private init() {}
}
