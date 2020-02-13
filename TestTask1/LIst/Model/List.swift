//111
//  AppDelegate.swift
//  Test Task 1
//
//  Created by Slava Kuzmitsky on 13.02.2020.
//  Copyright © 2020 Slava Kuzmitsky. All rights reserved.
//
import UIKit

class List: UITableViewController {
    
    let listArray = ["Поручение 1 - Составить список",
                          "Поручение 2 - Одеться",
                          "Поручение 3 - Сходить в магазин",
                          "Поручение 4 - Купить хлеб",
                          "Поручение 5 - Зайти в банк",
                          "Поручение 6 - Оплатить Счета",
                          "Поручение 7 - Вернуться домой",
                         ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        
        cell.textLabel?.text = "№\(indexPath.row)"
        cell.textLabel?.numberOfLines = 2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Detail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailsVC
                detailsVC.taskTitle = String(listArray[indexPath.row])
            }
        }
    }


}
