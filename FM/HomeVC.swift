//
//  HomeVC.swift
//  FM
//
//  Created by user on 05/06/22.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func categoryBtnTapped(_ sender: UIButton) {
        
        if sender.isSelected {
            sender.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            print("hello")
            sender.tintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        
    }
    
}
