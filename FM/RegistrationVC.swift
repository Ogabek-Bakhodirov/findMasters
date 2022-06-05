//
//  RegistrationVC.swift
//  FM
//
//  Created by user on 04/06/22.
//

import UIKit

class RegistrationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var firstBackground: UIView!
    @IBOutlet weak var secondBackground: UIView!
    @IBOutlet weak var thirdBackground: UIView!
    @IBOutlet weak var fourthBackground: UIView!
    @IBOutlet weak var genderPicker: UIButton!
    @IBOutlet weak var genderTypeLabel: UILabel!
    @IBOutlet weak var regionType: UILabel!
    @IBOutlet weak var cityType: UILabel!
    
    var screenWidth = UIScreen.main.bounds.width - 10
    var screenHeight = UIScreen.main.bounds.height / 2
    var selectedRow = 0
    var cityName = ""
    var isGenderPicker = true
    var isRegionPicker = false
    var isCityPicker = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        addBorderData()
    }
    
    //    func addBorderData(){
    //        firstBackground.layer.borderWidth = 0.4
    //        firstBackground.layer.borderColor = Key.colors.dataBackgroundColor.cgColor
    //        secondBackground.layer.borderWidth = 0.4
    //        secondBackground.layer.borderColor = Key.colors.dataBackgroundColor.cgColor
    //        thirdBackground.layer.borderWidth = 0.4
    //        thirdBackground.layer.borderColor = Key.colors.dataBackgroundColor.cgColor
    //        fourthBackground.layer.borderWidth = 0.4
    //        fourthBackground.layer.borderColor = Key.colors.dataBackgroundColor.cgColor
    //    }
    
    
    //    @IBAction func dataBtnPressed(_ sender: UIButton) {
    //        print("Pressed1")
    //    }
    
    
    // Gender Picker
    @IBAction func pickerBtnPressed(_ sender: UIButton) {
        isGenderPicker = true
        isRegionPicker = false
        isCityPicker = false
        
        let vc = RegistrationVC()
        vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        vc.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Select Gender", message: "", preferredStyle: .actionSheet)
        
        alert.setValue(vc, forKey: "contentViewController")
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { UIAlertAction in
        }))
        alert.addAction(UIAlertAction(title: "Select", style: .default, handler: { UIAlertAction in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            //
            let selected = Array(Key.Gender.gender)[self.selectedRow]
            self.genderTypeLabel.text = selected
            self.genderTypeLabel.textColor = .black
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    
    //Region Picker
    @IBAction func regionBtnPressed(_ sender: UIButton){
        isGenderPicker = false
        isRegionPicker = true
        isCityPicker = false
        
        let vc = RegistrationVC()
        vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
        vc.view.addSubview(pickerView)
        pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
        pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
        
        let alert = UIAlertController(title: "Select Gender", message: "", preferredStyle: .actionSheet)
        
        alert.setValue(vc, forKey: "contentViewController")
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { UIAlertAction in
        }))
        alert.addAction(UIAlertAction(title: "Select", style: .default, handler: { UIAlertAction in
            self.selectedRow = pickerView.selectedRow(inComponent: 0)
            //
            let selected = Array(Key.Region.regions)[self.selectedRow]
            self.regionType.text = selected
            self.regionType.textColor = .black
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    //City Picker
//        @IBAction func cityBtnPressed(_ sender: UIButton){
//            print("Pressed4")
//
//            isGenderPicker = false
//            isRegionPicker = false
//            isCityPicker = true
//
//            let vc = RegistrationVC()
//            vc.preferredContentSize = CGSize(width: screenWidth, height: screenHeight)
//            let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
//            pickerView.dataSource = self
//            pickerView.delegate = self
//            pickerView.selectRow(selectedRow, inComponent: 0, animated: false)
//            vc.view.addSubview(pickerView)
//            pickerView.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor).isActive = true
//            pickerView.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor).isActive = true
//
//            let alert = UIAlertController(title: "Select Gender", message: "", preferredStyle: .actionSheet)
//
//            alert.setValue(vc, forKey: "contentViewController")
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { UIAlertAction in
//            }))
//            alert.addAction(UIAlertAction(title: "Select", style: .default, handler: { UIAlertAction in
//                self.selectedRow = pickerView.selectedRow(inComponent: 0)
//                //
//                let selected = Array(Key.Gender.gender)[self.selectedRow]
//                self.genderTypeLabel.text = selected
//                self.cityName = self.genderTypeLabel.text ?? "Tashkent"
//                self.genderTypeLabel.textColor = .black
//            }))
//
//            present(alert, animated: true, completion: nil)
//        }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 30))
        
        if isGenderPicker == true{
            label.text = Key.Gender.gender[row]
        }
        
        if isRegionPicker == true{
            label.text = Key.Region.regions[row]
        }
        
        label.sizeToFit()
        return label
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var numberOfRows = 0
        
        if isGenderPicker == true{
            numberOfRows = Key.Gender.gender.count
        }
        
        if isRegionPicker == true{
            numberOfRows = Key.Region.regions.count
        }
        
//        if isCityPicker == true{
//            numberOfRows = Key.City.selectedCity(cityname: cityName)
//        }
//
        return numberOfRows
    }
        
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
}

