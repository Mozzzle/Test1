//
//  AppDelegate.swift
//  Test Task 1
//
//  Created by Slava Kuzmitsky on 13.02.2020.
//  Copyright © 2020 Slava Kuzmitsky. All rights reserved.
//
import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var taskTitle = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = taskTitle
        label.numberOfLines = 0
        
    }

}
