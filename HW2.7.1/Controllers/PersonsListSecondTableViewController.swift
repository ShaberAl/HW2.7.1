//
//  PersonsListSecondTableViewController.swift
//  HW2.7.1
//
//  Created by MacOS on 14.04.2022.
//

import UIKit

class PersonsListSecondTableViewController: UITableViewController {
    var personList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        10
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfo", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = "Bruh"
        
        cell.contentConfiguration = content
        
        return cell
    }
}
