//
//  SecondViewController.swift
//  hometask 3.3
//
//  Created by Islam Erlan Uulu on 18/4/23.
//

import UIKit

class SecondViewController: UIViewController{
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    private var contacts: [Contact] = [
        Contact(name: "Mike", image: "Mike", phone: "11111"),
        Contact(name: "Mukesh", image: "Mukesh", phone: "112222"),
        Contact(name: "Musk", image: "Musk", phone: "344451"),
        Contact(name: "Robson", image: "Robson", phone: "9999"),
        Contact(name: "Richard", image: "Richard", phone: "199922")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

extension SecondViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
        cell.detailTextLabel?.text = contacts[indexPath.row].phone
        return cell
    }
    

}


struct Contact {
    var name: String
    var image: String
    var phone: String
}
