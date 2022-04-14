//
//  ListOfPersonsBarController.swift
//  HW2.7.1
//
//  Created by MacOS on 14.04.2022.
//

import UIKit

class ListOfPersonsBarController: UITabBarController {
    private var personsList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: personsList)
    }
    
    func setupViewControllers(with persons: [Person]) {
        guard let firstTVC = viewControllers?.first as? PersonsListTableViewController else { return }
        guard let secondTVC = viewControllers?.last as? PersonsListSecondTableViewController else { return }
        
        firstTVC.personList = persons
        secondTVC.personList = persons
    }
}
