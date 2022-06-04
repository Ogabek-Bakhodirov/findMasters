//
//  ChooseLangViewController.swift
//  FM
//
//  Created by user on 04/06/22.
//

import UIKit

class ChooseLangVC: UIViewController {
@IBOutlet weak var ruLangView: UIView!
@IBOutlet weak var uzLangView: UIView!
@IBOutlet weak var topLabel: UILabel!
@IBOutlet weak var bottomLabel: UILabel!
@IBOutlet weak var topButton: UIButton!
@IBOutlet weak var bottomButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.textColor = .black
        bottomLabel.textColor = .black
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseLangButtonTapped(_ sender: UIButton) {
        
        if sender.tag == 0 {
            uzLangView.layer.borderWidth = 0
            ruLangView.layer.borderWidth = 2
            ruLangView.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            topLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bottomLabel.textColor = .black
        }  else {
            ruLangView.layer.borderWidth = 0
            uzLangView.layer.borderWidth = 2
            uzLangView.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bottomLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            topLabel.textColor = .black
        }
    }
    @IBAction func doneBtnTapped(_ sender: UIButton) {
        if bottomLabel.textColor == .black  && topLabel.textColor == .black {
            showAlert()
        }
        print("hello")
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Язык не выбран", message:"Пожалуйста выберете язык" ,preferredStyle: .alert)
        
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OKaction)
        self.present(alert, animated: true, completion: nil)
    }
}
