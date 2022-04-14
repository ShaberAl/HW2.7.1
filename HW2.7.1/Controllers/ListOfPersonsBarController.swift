//
//  ListOfPersonsBarController.swift
//  HW2.7.1
//
//  Created by MacOS on 14.04.2022.
//

import UIKit

class ListOfPersonsBarController: UITabBarController {
    private var personsList = Person.getPerson()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personsListVC = segue.destination as? UITableViewController else { return }
        
    }
}
