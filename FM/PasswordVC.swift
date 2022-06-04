//
//  PasswordVC.swift
//  FM
//
//  Created by user on 04/06/22.
//

import UIKit

class PasswordVC: UIViewController {
@IBOutlet weak var passwordTF: UITextField!
@IBOutlet weak var secondPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func passwordBtnTapped(_ sender: UIButton) {
        
        guard let firstPassword = passwordTF.text else {return}
        guard let secondPassword = secondPasswordTF.text else {return}
        
        if firstPassword == ""  || secondPassword == ""  || firstPassword != secondPassword  {
            showAlert()
    }
  
    func showAlert() {
        let alert = UIAlertController(title: "Пароль не введён", message:"Пожалуйста  внимательно введите  пароль" ,preferredStyle: .alert)
        
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OKaction)
        self.present(alert, animated: true, completion: nil)
    }
        
    }
  
}
